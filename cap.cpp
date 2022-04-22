#include <opencv2/core.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>  // cv::Canny()
#include <iostream>

using namespace cv;
using std::cout; using std::cerr; using std::endl;

int main(int, char**)
{
    Mat frame;
    Mat kernal(3,3,CV_32F,Scalar(0)); //claim kernal
    kernal.at<float>(1,1)=5;
    kernal.at<float>(0,1)=-1;
    kernal.at<float>(2,1)=-1;
    kernal.at<float>(1,0)=-1;
    kernal.at<float>(1,2)=-1;
    Mat result;
    cout << "Opening camera..." << endl;
    VideoCapture capture(0); // open the first camera 0:default camera 2:usb camera
    capture.set(CAP_PROP_FRAME_WIDTH,640);
    capture.set(CAP_PROP_FRAME_HEIGHT,480);//ajust resoluction
    if (!capture.isOpened())
    {
        cerr << "ERROR: Can't initialize camera capture" << endl;
        return 1;
    }

    cout << "Frame width: " << capture.get(CAP_PROP_FRAME_WIDTH) << endl;
    cout << "     height: " << capture.get(CAP_PROP_FRAME_HEIGHT) << endl;
    cout << "Capturing FPS: " << capture.get(CAP_PROP_FPS) << endl;

    cout << endl << "Press 'ESC' to quit, 'space' to toggle frame processing" << endl;
    cout << endl << "Start grabbing..." << endl;
    
    size_t nFrames = 0;
    bool enableProcessing = false;
    int64 t0 = cv::getTickCount();
    int64 processingTime = 0;
    for (;;)
    {
        capture >> frame; // read the next frame from camera
        if (frame.empty())
        {
            cerr << "ERROR: Can't grab camera frame." << endl;
            break;
        }
        nFrames++;
        if (nFrames % 10 == 0)
        {
            const int N = 10;
            int64 t1 = cv::getTickCount();
            cout << "Frames captured: " << cv::format("%5lld", (long long int)nFrames)
                 << "    Average FPS: " << cv::format("%9.1f", (double)getTickFrequency() * N / (t1 - t0))
                 << "    Average time per frame: " << cv::format("%9.2f ms", (double)(t1 - t0) * 1000.0f / (N * getTickFrequency()))
                 << "    Average processing time: " << cv::format("%9.2f ms", (double)(processingTime) * 1000.0f / (N * getTickFrequency()))
                 << std::endl;
            t0 = t1;
            processingTime = 0;
        }
        if (!enableProcessing)
        {
            imshow("Frame", frame);
        }
        else
        {
            int64 tp0 = cv::getTickCount();
            Mat processed;
            cv::Canny(frame, processed, 400, 800, 5);
            processingTime += cv::getTickCount() - tp0;
            imshow("Frame", processed);
        }
        int key = waitKey(1);
        if(key==32)
        {
            filter2D(frame,result,frame.depth(),kernal);
            imshow("photo",result);
        }
        if (key == 27/*ESC*/)
            break;
        // this is canny algrithm, used for detecting the edge of objects
        //if (key == 32/*SPACE*/)
        //{
        //   enableProcessing = !enableProcessing;
        //   cout << "Enable frame processing ('space' key): " << enableProcessing << endl;
        //}
        
    }
    std::cout << "Number of captured frames: " << nFrames << endl;
    return nFrames > 0 ? 0 : 1;
}