# Trainingsfragen: Java OOP Grundlagen

Übungsfragen zu Klassen, Objekten, Vererbung, Kapselung, Polymorphismus, Interfaces und abstrakten Klassen in Java.

---

## Frage 1
**Frage:** Was ist eine Klasse in Java?

**Optionen:**
a) Ein fertiges Objekt mit Daten
b) Ein Bauplan/Vorlage für Objekte
c) Eine Methode ohne Rückgabewert
d) Ein Zugriffsmodifizierer

**Richtige Antwort:** b

**Erklärung:** Eine Klasse ist ein Bauplan (Vorlage), aus dem Objekte erstellt werden. Sie definiert Attribute (Daten) und Methoden (Verhalten), die alle Objekte dieser Klasse haben.

---

## Frage 2
**Richtig oder Falsch:** Mit dem Schlüsselwort `new` wird in Java ein neues Objekt (eine Instanz) einer Klasse erstellt.

**Richtige Antwort:** Richtig

**Erklärung:** Der Ausdruck `new Auto()` erstellt eine neue Instanz der Klasse `Auto`. Dabei wird der Konstruktor aufgerufen und Speicher für das Objekt reserviert.

---

## Frage 3
**Frage:** Was ist ein Konstruktor in Java?

**Optionen:**
a) Eine Methode, die ein Objekt löscht
b) Eine spezielle Methode, die beim Erstellen eines Objekts aufgerufen wird
c) Eine Variable, die den Zustand speichert
d) Ein Interface ohne Methoden

**Richtige Antwort:** b

**Erklärung:** Ein Konstruktor ist eine spezielle Methode, die denselben Namen wie die Klasse hat und keinen Rückgabetyp besitzt. Er wird automatisch aufgerufen, wenn ein neues Objekt mit `new` erstellt wird.

---

## Frage 4
**Richtig oder Falsch:** Das Schlüsselwort `this` in Java verweist auf die Klasse selbst (nicht auf ein konkretes Objekt).

**Richtige Antwort:** Falsch

**Erklärung:** `this` verweist auf das aktuelle Objekt (die aktuelle Instanz), nicht auf die Klasse. Es wird häufig in Konstruktoren verwendet, um zwischen Parametern und Instanzvariablen mit gleichem Namen zu unterscheiden.

---

## Frage 5
**Frage:** Welchen Zugriffsmodifizierer verwendet man in Java, wenn ein Attribut nur innerhalb der eigenen Klasse zugänglich sein soll?

**Optionen:**
a) `public`
b) `protected`
c) `private`
d) `static`

**Richtige Antwort:** c

**Erklärung:** `private` macht ein Attribut oder eine Methode nur innerhalb der eigenen Klasse zugänglich. Das ist ein wichtiges Prinzip der Kapselung (Encapsulation).

---

## Frage 6
**Richtig oder Falsch:** Kapselung (Encapsulation) bedeutet, dass die internen Daten eines Objekts nach außen hin verborgen werden und nur über Methoden (Getter/Setter) zugänglich sind.

**Richtige Antwort:** Richtig

**Erklärung:** Kapselung schützt die internen Daten eines Objekts vor direktem Zugriff von außen. Stattdessen wird der Zugriff über definierte Methoden (Getter zum Lesen, Setter zum Schreiben) kontrolliert.

---

## Frage 7
**Frage:** Welches Schlüsselwort verwendet man in Java, um eine Klasse von einer anderen Klasse erben zu lassen?

**Optionen:**
a) `implements`
b) `inherits`
c) `uses`
d) `extends`

**Richtige Antwort:** d

**Erklärung:** In Java wird Vererbung mit dem Schlüsselwort `extends` ausgedrückt. Zum Beispiel bedeutet `class Hund extends Tier`, dass `Hund` alle Attribute und Methoden von `Tier` erbt.

---

## Frage 8
**Richtig oder Falsch:** In Java kann eine Klasse von mehreren Klassen gleichzeitig erben (Mehrfachvererbung bei Klassen).

**Richtige Antwort:** Falsch

**Erklärung:** Java unterstützt keine Mehrfachvererbung bei Klassen. Eine Klasse kann nur von einer einzigen Klasse erben (`extends`). Mehrfachvererbung ist nur über Interfaces möglich.

---

## Frage 9

**Frage:** Was bewirkt die Annotation `@Override` in Java?

**Optionen:**
a) Sie erstellt eine neue Methode
b) Sie zeigt an, dass eine Methode der Oberklasse überschrieben wird
c) Sie macht eine Methode privat
d) Sie erstellt ein Interface

**Richtige Antwort:** b

**Erklärung:** `@Override` ist eine Annotation, die anzeigt, dass die Methode eine Methode der Oberklasse überschreibt. Sie hilft dem Compiler, Fehler zu erkennen (z.B. wenn der Methodenname falsch geschrieben wurde).

---

## Frage 10
**Richtig oder Falsch:** Polymorphismus in Java ermöglicht es, dass eine Variable vom Typ der Oberklasse ein Objekt einer Unterklasse enthält.

**Richtige Antwort:** Richtig

**Erklärung:** Das ist Laufzeit-Polymorphismus. Zum Beispiel kann `Tier t = new Hund()` gültig sein, weil `Hund` eine Unterklasse von `Tier` ist. Beim Aufruf einer überschriebenen Methode wird die Implementierung der tatsächlichen Klasse (hier `Hund`) verwendet.

---

## Frage 11
**Frage:** Was ist eine abstrakte Klasse in Java?

**Optionen:**
a) Eine Klasse, die keine Attribute hat
b) Eine Klasse, von der direkt Objekte erstellt werden können
c) Eine Klasse, die nicht direkt instanziiert werden kann und abstrakte Methoden enthalten darf
d) Eine Klasse ohne Methoden

**Richtige Antwort:** c

**Erklärung:** Eine abstrakte Klasse wird mit `abstract class` deklariert. Von ihr können keine Objekte direkt erstellt werden. Sie kann abstrakte Methoden (ohne Implementierung) enthalten, die von Unterklassen überschrieben werden müssen.

---

## Frage 12
**Richtig oder Falsch:** Ein Interface in Java kann eine oder mehrere Klassen zusammenfassen, aber eine Klasse kann nur ein einziges Interface implementieren.

**Richtige Antwort:** Falsch

**Erklärung:** Eine Klasse kann mehrere Interfaces gleichzeitig implementieren (mit `implements InterfaceA, InterfaceB`). Das ermöglicht eine Art Mehrfachvererbung des Verhaltens, ohne die Einschränkung der Klassen-Vererbung.

---

## Frage 13
**Frage:** Welches Schlüsselwort wird in Java verwendet, um ein Interface zu implementieren?

**Optionen:**
a) `extends`
b) `abstract`
c) `implements`
d) `override`

**Richtige Antwort:** c

**Erklärung:** Mit `implements` zeigt eine Klasse an, dass sie ein Interface umsetzt. Zum Beispiel: `class Ente implements Schwimmbar, Fliegbar`. Die Klasse muss dann alle Methoden des Interfaces implementieren.

---

## Frage 14
**Richtig oder Falsch:** Abstrakte Methoden haben keinen Methodenrumpf (keine geschweifte Klammern mit Code).

**Richtige Antwort:** Richtig

**Erklärung:** Eine abstrakte Methode wird mit `abstract` deklariert und endet mit einem Semikolon, ohne Methodenrumpf. Zum Beispiel: `public abstract double flaeche();`. Die konkrete Implementierung muss in der Unterklasse erfolgen.

---

## Frage 15
**Frage:** Was ist der Unterschied zwischen `extends` und `implements` in Java?

**Optionen:**
a) `extends` wird für Interfaces verwendet, `implements` für Klassen
b) `extends` erbt von einer Klasse, `implements` setzt ein Interface um
c) Beide bedeuten dasselbe
d) `extends` ist für abstrakte Klassen, `implements` für normale Klassen

**Richtige Antwort:** b

**Erklärung:** `extends` wird für Klassenvererbung verwendet (eine Klasse erbt von einer anderen Klasse). `implements` wird verwendet, wenn eine Klasse die Methoden eines Interface bereitstellt. Eine Klasse kann nur eine Klasse erweitern (`extends`), aber mehrere Interfaces implementieren (`implements`).

---

## Frage 16
**Richtig oder Falsch:** `protected` in Java bedeutet, dass ein Attribut oder eine Methode nur innerhalb der eigenen Klasse, aber auch in allen Unterklassen zugänglich ist.

**Richtige Antwort:** Richtig

**Erklärung:** `protected` erlaubt den Zugriff innerhalb der eigenen Klasse und in allen Unterklassen (sowie im selben Paket). Das ist nützlich, wenn Unterklassen auf Attribute der Oberklasse zugreifen sollen, externe Klassen aber nicht.

---

## Frage 17
**Frage:** Was gibt `super` in einer Unterklasse an?

**Optionen:**
a) Das aktuelle Objekt
b) Die Oberklasse oder den Konstruktor der Oberklasse
c) Den Zugriffsmodifizierer
d) Eine statische Methode

**Richtige Antwort:** b

**Erklärung:** `super` verweist auf die Oberklasse. Mit `super.methode()` kann man eine Methode der Oberklasse aufrufen, mit `super(parameter)` den Konstruktor der Oberklasse.

---

## Frage 18
**Richtig oder Falsch:** Eine abstrakte Klasse kann sowohl abstrakte als auch normale (konkrete) Methoden enthalten.

**Richtige Antwort:** Richtig

**Erklärung:** Eine abstrakte Klasse kann eine Mischung aus abstrakten Methoden (ohne Implementierung, müssen in Unterklassen überschrieben werden) und konkreten Methoden (mit Implementierung, werden geerbt) enthalten.

---

## Frage 19
**Offene Frage:** Erkläre den Unterschied zwischen einer abstrakten Klasse und einem Interface in Java und nenne jeweils ein Beispiel.

**Musterantwort:** 
**Abstrakte Klasse:** Wird mit `abstract class` deklariert, kann keine Objekte erstellen, kann sowohl abstrakte als auch konkrete Methoden haben, kann Instanzvariablen haben. Eine Klasse kann nur von einer abstrakten Klasse erben.
*Beispiel:* `abstract class Form { abstract double flaeche(); }` – `Kreis extends Form`

**Interface:** Wird mit `interface` deklariert, enthält nur abstrakte Methoden (Vertrag), keine Instanzvariablen (nur Konstanten). Eine Klasse kann mehrere Interfaces implementieren.
*Beispiel:* `interface Schwimmbar { void schwimmen(); }` – `Ente implements Schwimmbar`

---

## Frage 20
**Frage:** Welches OOP-Prinzip wird gezeigt, wenn man ein Attribut als `private` deklariert und Getter-/Setter-Methoden bereitstellt?

**Optionen:**
a) Vererbung
b) Polymorphismus
c) Kapselung
d) Abstraktion

**Richtige Antwort:** c

**Erklärung:** Das Verbergen von Attributen durch `private` und das Bereitstellen von kontrollierten Zugriffsmethoden (Getter/Setter) ist das Prinzip der Kapselung (Encapsulation). Es schützt die inneren Daten eines Objekts und macht den Code robuster.

---

## Frage 21
**Richtig oder Falsch:** Wenn man bei Polymorphismus eine überschriebene Methode aufruft, wird immer die Methode der Oberklasse verwendet.

**Richtige Antwort:** Falsch

**Erklärung:** Bei Polymorphismus wird immer die Methode der tatsächlichen Klasse des Objekts zur Laufzeit aufgerufen. Das ist das Prinzip des dynamischen Dispatchings. Wenn `t` vom Typ `Tier` ist, aber auf ein `Hund`-Objekt zeigt, wird beim Aufruf von `t.sprachAusgabe()` die Version von `Hund` ausgeführt (sofern überschrieben).

---

## Frage 22
**Frage:** Was ist eine Instanzvariable?

**Optionen:**
a) Eine Variable, die zu einer Klasse gehört und für alle Objekte gleich ist
b) Eine Variable, die innerhalb einer Methode deklariert wird
c) Eine Variable, die zu einem bestimmten Objekt (Instanz) einer Klasse gehört
d) Eine Variable, die den Rückgabetyp einer Methode angibt

**Richtige Antwort:** c

**Erklärung:** Eine Instanzvariable (auch Attribut genannt) ist eine Variable, die zu einem konkreten Objekt (einer Instanz) gehört. Jedes Objekt hat seine eigene Kopie der Instanzvariablen.

---

## Frage 23
**Offene Frage:** Erkläre Polymorphismus in Java anhand eines selbst gewählten Beispiels und zeige, wie er in der Praxis nützlich ist.

**Musterantwort:** 
Polymorphismus bedeutet, dass ein Objekt viele Formen annehmen kann. Eine Variable vom Typ der Oberklasse kann auf ein Objekt einer beliebigen Unterklasse zeigen.

*Beispiel:* Es gibt eine Klasse `Tier` mit der Methode `sprachAusgabe()`. Die Unterklassen `Hund` (gibt "Wau!" aus) und `Katze` (gibt "Miau!" aus) überschreiben diese Methode.

```java
Tier t1 = new Hund();
Tier t2 = new Katze();
t1.sprachAusgabe(); // "Wau!"
t2.sprachAusgabe(); // "Miau!"
```

*Nützlichkeit:* Man kann Methoden schreiben, die ein Objekt vom Typ der Oberklasse annehmen und trotzdem das richtige Verhalten der jeweiligen Unterklasse aufrufen. Das macht den Code flexibel und wiederverwendbar.

---

## Frage 24
**Frage:** Was passiert, wenn man versucht, direkt ein Objekt einer abstrakten Klasse zu erstellen?

**Optionen:**
a) Das Programm läuft mit einem Standardobjekt
b) Es entsteht ein Kompilierfehler
c) Es entsteht ein Laufzeitfehler
d) Die abstrakte Klasse wird automatisch in eine normale Klasse umgewandelt

**Richtige Antwort:** b

**Erklärung:** Der Java-Compiler verbietet das direkte Erstellen von Objekten abstrakter Klassen. Der Versuch `new Form()` bei einer abstrakten Klasse `Form` führt zu einem Kompilierfehler. Man muss immer eine konkrete Unterklasse instanziieren.

---

## Frage 25
**Richtig oder Falsch:** Ein Getter ist eine Methode, die den Wert eines (oft privaten) Attributs zurückgibt.

**Richtige Antwort:** Richtig

**Erklärung:** Getter-Methoden folgen der Konvention `getAttributname()` und geben den Wert eines Attributs zurück. Zum Beispiel gibt `getKontostand()` den Wert der privaten Variable `kontostand` zurück.
