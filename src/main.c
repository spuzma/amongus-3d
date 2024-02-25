
#include <SDL2/SDL.h>
#include <stdbool.h>
#include <stdio.h>

#define SCREEN_WIDTH 384
#define SCREEN_HEIGHT 216

// Implement render loop
static void render();

struct {
  SDL_Window *window;
  SDL_Renderer *renderer;
  SDL_Texture *texture;
  uint32_t pixels[SCREEN_HEIGHT * SCREEN_WIDTH];
  bool quit;
} state;

int main(int argc, char *args[]) {
  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
    printf("Failed to initialize the SDL2 library\n");
    return -1;
  }
  state.window =
      SDL_CreateWindow("window", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                       1280, 720, SDL_WINDOW_ALLOW_HIGHDPI);

  state.renderer =
      SDL_CreateRenderer(state.window, -1, SDL_RENDERER_PRESENTVSYNC);

  while (!state.quit) {
    // main game loop
    SDL_Event e;
    while (SDL_PollEvent(&e) != 0) {
      // User requests quit
      if (e.type == SDL_QUIT) {
        state.quit = true;
      }
    }
    SDL_UpdateTexture(state.texture, NULL, state.pixels, SCREEN_WIDTH * 4);
    SDL_RenderCopyEx(state.renderer, state.texture, NULL, NULL, 0.0, NULL,
                     SDL_FLIP_VERTICAL);
    SDL_RenderPresent(state.renderer);
  }

  SDL_DestroyTexture(state.texture);
  SDL_DestroyRenderer(state.renderer);
  SDL_DestroyWindow(state.window);
}
