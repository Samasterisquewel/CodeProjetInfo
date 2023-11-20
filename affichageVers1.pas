program affichage;

uses SDL2;

var sdlFenetre: PSDL_Window; sdlRenderer: PSDL_Renderer;
const FrequenceFrames = {fréquence des frames = une seconde / nb de frames}
const NB_Frames = {nombre de frames}
const Largeur_Fenetre = {largeur de la surface de jeu}
const Longueur_Fenetre = {longueur de la surface de jeu}

begin

//initialisation du système vidéo
if SDL_Init(SDL_INIT_VIDEO) < 0 then Halt;

//initialisation de la fenêtre
sdlFenetre := SDL_CreateWindow('IN''ÇA SAUTE !', 50, 50, 500, 500, SDL_WINDOW_HIDDEN); {fenêtre cachée pour l'initialisation - montrée en génération de frames}
if sdlFenetre = nil then Halt;
  
//paramétrage de la fenêtre
sdlFenetre := SDL_Init(SDL_INIT_AUDIO OR SDL_INIT_VIDEO OR SDL_INIT_TIMER OR SDL_INIT_EVENTS)

//initialisation du renderer
sdlRenderer := SDL_CreateRenderer(sdlWindow1, -1, 0);
if sdlRenderer = nil then Halt;

//paramétrage du renderer ?
 

//génération des frames
sdlFenetre := SDL_Init(SDL_WINDOW_SHOWN)
repeat
	SDL_RenderPresent(sdlRenderer);
	SDL_Delay(FrequenceFrames);

  
//pour chaque image, recopier la fonction suivante :
  

//nettoyer la mémoire
SDL_DestroyRenderer(sdlRenderer);
SDL_DestroyWindow(sdlFenetre);

//fermer SDL2
SDL_Quit;

end.  
