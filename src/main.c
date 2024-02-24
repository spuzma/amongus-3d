
#include <SDL2/SDL.h>
#include <SDL2/SDL_timer.h>
#include <stdio.h>

struct Screen {
  SDL_Window *window;
  SDL_Surface *window_surface;
};

int main(int argc, char *args[]) {
  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
    printf("Failed to initialize the SDL2 library\n");
    return -1;
  }
  struct Screen screen;
  screen.window = SDL_CreateWindow("window", SDL_WINDOWPOS_CENTERED,
                                   SDL_WINDOWPOS_CENTERED, 700, 400, 0

  );
  screen.window_surface = SDL_GetWindowSurface(screen.window);

  SDL_FillRect(screen.window_surface, NULL,
               SDL_MapRGB(screen.window_surface->format, 255, 90, 120));
  SDL_UpdateWindowSurface(screen.window);
  SDL_Delay(10000);
}
