-- |
-- Module      :  Acme.CuteGirl
-- Copyright   :  (c) Mateusz Kowalczyk 2014
-- License     :  GPL-3
--
-- Maintainer  :  fuuzetsu@fuuzetsu.co.uk
-- Stability   :  stable
--
-- Module that maybe gives you a cute girl.
module Acme.CuteGirl where

import System.Environment (getArgs)

-- | Cute girls capable of doing cute stuff
data CuteGirl = Sayaka | Kyōko | Homura deriving Show

-- | Did you expect a cute girl? Too bad!
cuteGirl :: Maybe CuteGirl
cuteGirl = Just Sayaka

-- | Prints a descriptive result of 'cuteGirl'.
printCuteGirl :: IO ()
printCuteGirl = case cuteGirl of
  Just Sayaka -> putStrLn $ concat [ "You expected some cute girl?\n"
                                   , "Too bad!\n"
                                   , "It was Sayaka-chan!"
                                   ]
  _ -> return ()

-- | Native version of 'printCuteGirl'.
jpnPrintCuteGirl :: IO ()
jpnPrintCuteGirl = case cuteGirl of
  Just Sayaka -> putStrLn $ concat [ "かわいい女の子かと思った？\n"
                                   , "残念！\n"
                                   , "残念さやかちゃんでした！"
                                   ]
  _ -> return ()
