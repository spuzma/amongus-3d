
#include <SDL2/SDL.h>
#include <SDL2/SDL_rect.h>
#include <stdbool.h>
#include <stdio.h>

#define SCREEN_WIDTH 1280
#define SCREEN_HEIGHT 720

struct {
  SDL_Window *window;
  SDL_Renderer *renderer;
  SDL_Texture *texture;
  bool quit;

  struct {
    SDL_Rect body;

  } player;

  struct {

  } tilemap_t;
} state;

// Implement render loop
static void render() {
  SDL_SetRenderDrawColor(state.renderer, 255, 0, 0, 255);
  SDL_RenderFillRect(state.renderer, &state.player.body);
};

int main(int argc, char *args[]) {
  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
    printf("Failed to initialize the SDL2 library\n");
    return -1;
  }
  state.window = SDL_CreateWindow("Monke and Dunke", SDL_WINDOWPOS_CENTERED,
                                  SDL_WINDOWPOS_CENTERED, SCREEN_WIDTH,
                                  SCREEN_HEIGHT, SDL_WINDOW_ALLOW_HIGHDPI);

  state.renderer =
      SDL_CreateRenderer(state.window, -1, SDL_RENDERER_PRESENTVSYNC);

  state.player.body.x = SCREEN_WIDTH / 2;
  state.player.body.y = SCREEN_HEIGHT / 2;
  state.player.body.w = 100;
  state.player.body.h = 100;

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
          state.player.body.y -= 10;
          break;
        case SDLK_s:
          state.player.body.y += 10;
          break;
        case SDLK_a:
          state.player.body.x -= 10;
          break;
        case SDLK_d:
          state.player.body.x += 10;
          break;
        }
      }
    }

    SDL_SetRenderDrawColor(state.renderer, 0, 0, 0, 255);
    SDL_RenderClear(state.renderer);

    render();
    SDL_RenderPresent(state.renderer);
  }

  SDL_DestroyTexture(state.texture);
  SDL_DestroyRenderer(state.renderer);
  SDL_DestroyWindow(state.window);
}
