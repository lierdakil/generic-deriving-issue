{-# OPTIONS_GHC -ddump-splices #-}
{-# LANGUAGE TemplateHaskell, DataKinds, TypeFamilies #-}

module Main where

import Generics.Deriving.TH
import GHC.Generics
import Test

instance Generic (SomeData OtherData) where
  type Rep (SomeData OtherData) = $(makeRep0Inline ''SomeData [t|SomeData OtherData|])
  from = undefined
  to = undefined

main :: IO ()
main = putStrLn "Hello, Haskell!"
