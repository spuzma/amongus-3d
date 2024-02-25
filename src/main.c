
#include <SDL2/SDL.h>
#include <SDL2/SDL_events.h>
#include <stdbool.h>
#include <stdio.h>

#define SCREEN_WIDTH 1280
#define SCREEN_HEIGHT 720

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
      SDL_CreateWindow("Monke and Dunke", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                       1280, 720, SDL_WINDOW_ALLOW_HIGHDPI);

  state.renderer =
      SDL_CreateRenderer(state.window, -1, SDL_RENDERER_PRESENTVSYNC);

  SDL_SetRenderDrawColor(state.renderer, 255, 0, 0, 255);

  SDL_Rect player;
  player.x = 0;
  player.y = 0;
  player.w = 100;
  player.h = 100;

  while (!state.quit) {
    // main game loop
    SDL_Event e;
    while (SDL_PollEvent(&e) != 0) {
      // User requests quit
      if (e.type == SDL_QUIT) {
        state.quit = true;
      } else if (e.type == SDL_KEYDOWN) {
          switch (e.key.keysym.sym) {
          case SDLK_w:
            player.y -= 10;
            break;
          case SDLK_s:
            player.y += 10;
            break;
          case SDLK_a:
            player.x -= 10;
            break;
          case SDLK_d:
            player.x += 10;
            break;
        }
      }
    }
    SDL_UpdateTexture(state.texture, NULL, state.pixels, SCREEN_WIDTH * 4);
    SDL_RenderCopyEx(state.renderer, state.texture, NULL, NULL, 0.0, NULL,
                     SDL_FLIP_VERTICAL);
    SDL_RenderFillRect(state.renderer, &player);
    SDL_RenderPresent(state.renderer);
  }

  SDL_DestroyTexture(state.texture);
  SDL_DestroyRenderer(state.renderer);
  SDL_DestroyWindow(state.window);
}
