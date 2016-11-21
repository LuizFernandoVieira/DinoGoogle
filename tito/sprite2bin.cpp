/*	Tito Marcos de Moraes Klautau
 * 	11/0142390
 *
 *
 */


#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

#include <iostream>
#include <fstream>
#include <string>

/*
CXX = clang++
SDL = -framework SDL2
SDL_image = -framework SDL2_image
SDL_mixer = -framework SDL2_mixer
SDL_ttf = -framework SDL2_ttf
Lua = -L/usr/local/lib -llua
*/



int main(){

	int endereco = 0;
	int pixel = 0;
	int espaco = 0;
	uchar aux;
	std::string sprite;
	std::string arquivo;
	uchar blue;
	uchar green;
	uchar red;



	std::cout <<"nome do arquivo de texto \n";
	std::cin >> arquivo;

	std::ofstream code(arquivo.c_str(), std::ios::out | std::ios::binary);

	while(true){

	std::cout << "nome do arquivo de imagem: \n ";
	std::cin >> sprite;

	IplImage *img = cvLoadImage(sprite.c_str(), CV_LOAD_IMAGE_UNCHANGED);
	cvNamedWindow("window", CV_WINDOW_AUTOSIZE);
	cvShowImage("window", img);





		for (int y = 0; y < img->height; y++) {
			for(int x = 0; x < img->width; x++) {


				blue = ((uchar*)(img->imageData + img->widthStep*y))[x*3];
				green = ((uchar*)(img->imageData + img->widthStep*y))[x*3+1];
				red = ((uchar*)(img->imageData + img->widthStep*y))[x*3+2];


					blue = blue/64;
					green = green/32;
					red = red/32;




					blue = blue*64;
					green = green*8;

					pixel = blue + green + red;

					aux = pixel;
                    cout << aux;
					code << aux;
					espaco++;

					endereco++;

	//	        std::cout << std::dec << x << " " << y ;
	//	    	std::cout << " -- B: " << hex(blue) << " -- G: " << hex(green) << " -- R: " << hex(red) << std::endl;

	//	    	cvWaitKey(0);
			}
		}
		cvWaitKey(0);
		cvReleaseImage(&img);
		cv::destroyAllWindows();

	}
	code.close();

	std::cout << "hue" << std::endl;



	return 0;
}
