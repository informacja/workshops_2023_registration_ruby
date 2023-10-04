## Zadania do realizacji

## 1. Policz elementy w tabeli

### Założenia

* Stwórz metodę do sprawdzenia ile razy dany element (słowo, liczba) powtarza się w tabeli.
* Zwracamy hash z elementem oraz ilość powtórzeń.

Przykładowe wywołanie:

```
CountElements.new([0,4,2,1,0,2,5]).perform
=> { 0 => 2, 4 => 1, 2 => 2, 1 => 1, 5 => 1 }
```

## 2. Walidacja hasła

### Założenia

* Dla podanego hasła (stringa) zwracamy true/false, w zależności od tego, czy spełnione są następujące reguły:
* Długość od 6 do 24 znaków
* Co najmniej jedna wielka litera (A-Z)
* Co najmniej jedna mała litera (a-z)
* Co najmniej jedna cyfra (0-9)
* Co najmniej jeden znak specjalny (! @ # $ % & * + = : ; ? < >)
* Maksymalnie 2 powtarzające się symbole w ciągu : 'ww' -> dobrze, 'www' -> źle

Przykładowe wywołania

```
ValidatePassword.new("Password1!").perform
=> true
ValidatePassword.new("password1!").perform
=> false
```

## Setup

```
gem install bundler
bundle
```

## Uruchomienie testów

```
bundle exec rspec
```

Zadanie jest wykonane poprawnie, jeśli testy przejdą bez błędów, jak poniżej:

```
ValidatePassword
  args: 'Password1!'
    should eq true
  args: 'password1!
    should eq false
  args: 'Exaaample1!'
    should eq false
  args: 'fail'
    should eq false
  args: 'Password1!Password1!Password1!'
    should eq false

CountElements
  first dataset
    should eq { 'infakt' => 1, 'ror' => 2, 'ruby' => 3 }
  second dataset
    should eq { 0 => 2, 1 => 1, 2 => 2, 4 => 1, 5 => 1 }
  third dataset
    should eq { 1 => 2, 'car' => 1, 'house' => 3, 3 => 1, 6 => 3 }
  fourth dataset
    should eq { " " => 2, "," => 2, "." => 3, "/" => 3}

Finished in 0.00243 seconds (files took 0.04795 seconds to load)
9 examples, 0 failures
```
