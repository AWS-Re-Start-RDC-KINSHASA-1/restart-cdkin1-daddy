# -*- coding: utf-8 -*-
"""
Created on Thu Feb 15 14:23:28 2024

@author: Daddy Mosanda
"""
import os

def new_user():
    confirm = "N"
    while confirm != "Y":
        username = input("Indiquez le nom de l'utilisateur à ajouter: ")
        print("Utiliser username '" + username + "'? (Y/N)")
        confirm = input().upper()
        
    os.system("sudo adduser " + username)