module Main where

-- |
-- Module      :  Acme.CuteGirl
-- Copyright   :  (c) Mateusz Kowalczyk 2014
-- License     :  GPL-3
--
-- Maintainer  :  fuuzetsu@fuuzetsu.co.uk
-- Stability   :  stable
--
-- Executable module handling "Acme.CuteGirl"
import Acme.CuteGirl

import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  if "-h" `elem` args || "--help" `elem` args
    then putStrLn help
    else if "-j" `elem` args || "--japanese" `elem` args
         then jpnPrintCuteGirl
         else printCuteGirl
  where
    help = concat [ "CuteGirl -- attempts to get a cute girl.\n"
                  , "\n"
                  , "Flags:\n"
                  , "-h,  --help        Prints this help menu\n"
                  , "-j,  --japanese    Prints the possible cute girl natively."
                  ]
