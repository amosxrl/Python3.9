
from pygame.locals import *
import pygame, sys

pygame.init()

DISPLAYSURF=pygame.display.set_mode((800,600))
pygame.display.set_caption("Hello World!")
while True: #principal loop
    for event in pygame.event.get():
        if event.type==QUIT:
            pygame.quit()
            sys.exit()
        pygame.display.update()