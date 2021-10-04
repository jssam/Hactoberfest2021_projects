
import random #for generating random no.
import sys #we will use sys.exit toexit the game
import pygame #
from pygame.locals import* # basic pygame program

# global varialbe
FPS = 32
SCREENWIDTH = 289
SCREENHEIGHT = 511
SCREEN = pygame.display.set_mode((SCREENWIDTH,SCREENHEIGHT))
GROUNDY = SCREENHEIGHT*0.8
GAME_SPRITES = {}
GAME_SOUNDS= {}
PLAYER = ''
BACKGROUND = ''
PIPE= ''

def welcomescreen():
    #shows images on welcome screen

    playerx=int(SCREENWIDTH/5)
    playery=int((SCREENHEIGHT-GAME_SPRITES['player'].get_height())/2)
    messagex=int((SCREENHEIGHT-GAME_SPRITES['message'].get_height())/2)
    messagey=int(SCREENHEIGHT*0.13)
    basex=0
    while True:
        for event in pygame.event.get():
            # if user clicks on cross button,close the game
            if event.type==QUIT or (event.type==KEYDOWN and event.key==K_ESCAPE):
                pygame.quit()
                sys.exit()
            # if the user presses space or up key ,start the game
            elif event.type==KEYDOWN and (event.type==K_SPACE or event.key==K_UP):
                return
            else:
                SCREEN.blit(GAME_SPRITES['background'],(0,0))
                SCREEN.blit(GAME_SPRITES['player'],(playerx,playery))
                SCREEN.blit(GAME_SPRITES['message'],(messagex,messagey))
                SCREEN.blit(GAME_SPRITES['base'],(basex,GROUNDY))
                # SCREEN.blit(GAME_SPRITES[''],(0,0))      
                pygame.display.update()  
                FPSCLOCK.tick(FPS)
def maingame():
    score=0
    playerx=int(SCREENWIDTH/5)
    playery=int(SCREENWIDTH/2)
    basex=0


if __name__ == "__main__":
    # this will be the main point frm where our game will start
    pygame.init() #initialises the all pygame modules
    FPSCLOCK = pygame.time.Clock()
    pygame.display.set_caption("Flappy Bird by MOHIT PANCHAL")
    GAME_SPRITES['numbers'] = (








    )
    GAME_SPRITES['message'] = pygame.image.load('').convert_alpha()
    GAME_SPRITES['base'] = pygame.image.load('').convert_alpha()
    GAME_SPRITES['pipe'] =(
    pygame.transform.rotate(pygame.image.load(PIPE).convert_alpha(),180),
    pygame.image.load('').convert_alpha()
    )

    # game sounds
    GAME_SOUNDS['die'] = pygame.mixer.Sound('')
    GAME_SOUNDS['hit'] = pygame.mixer.Sound('')
    GAME_SOUNDS['point'] = pygame.mixer.Sound('')
    GAME_SOUNDS['swoosh'] = pygame.mixer.Sound('')
    GAME_SOUNDS['wing'] = pygame.mixer.Sound('')


    GAME_SPRITES['background'] = pygame.image.load('').convert()
    GAME_SPRITES['player'] = pygame.imagr.load('').convert_alpha()


    while True:
        welcomescreen() #shows welcome screen untill the user presses a button
        maingame() #this is the main game function
