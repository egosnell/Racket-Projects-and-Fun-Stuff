;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname totient) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; totient-from: Nat Nat -> Nat
(define (totient-from k n)
  (cond
    [(= k n) 0]
    [(= 1 (gcd k n)) (add1 (totient-from (add1 k) n))]
    [else (totient-from (add1 k) n)]))
  
;; totient: Nat -> Nat
(define (totient n) (totient-from 1 n))