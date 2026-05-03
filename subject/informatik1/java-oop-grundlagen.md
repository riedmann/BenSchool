# Java - Objektorientierte Programmierung (OOP)

## Grundlagen der objektorientierten Programmierung in Java

Objektorientierte Programmierung (OOP) ist ein Programmierparadigma, bei dem Programme aus **Objekten** bestehen, die Daten (Attribute) und Verhalten (Methoden) kombinieren.

---

## 1. Klassen und Objekte

Eine **Klasse** ist eine Vorlage (Bauplan) für Objekte. Ein **Objekt** ist eine konkrete Instanz einer Klasse.

```java
public class Auto {
    // Attribute (Instanzvariablen)
    String marke;
    int baujahr;

    // Methode
    public void fahren() {
        System.out.println("Das Auto fährt.");
    }
}

// Objekt erstellen
Auto meinAuto = new Auto();
meinAuto.marke = "BMW";
meinAuto.fahren();
```

---

## 2. Konstruktoren

Ein **Konstruktor** ist eine spezielle Methode, die beim Erstellen eines Objekts aufgerufen wird. Er hat denselben Namen wie die Klasse und keinen Rückgabetyp.

```java
public class Auto {
    String marke;
    int baujahr;

    // Konstruktor
    public Auto(String marke, int baujahr) {
        this.marke = marke;
        this.baujahr = baujahr;
    }
}

Auto meinAuto = new Auto("BMW", 2020);
```

Das Schlüsselwort **`this`** verweist auf das aktuelle Objekt.

---

## 3. Kapselung (Encapsulation)

**Kapselung** bedeutet, dass die internen Daten eines Objekts nach außen hin verborgen werden. Dazu werden Attribute als `private` deklariert und über **Getter** und **Setter** zugänglich gemacht.

```java
public class Konto {
    private double kontostand; // private - von außen nicht direkt zugreifbar

    public double getKontostand() {  // Getter
        return kontostand;
    }

    public void einzahlen(double betrag) {  // Setter (mit Logik)
        if (betrag > 0) {
            kontostand += betrag;
        }
    }
}
```

**Zugriffsmodifizierer:**
- `private` – nur innerhalb der Klasse
- `public` – überall zugänglich
- `protected` – innerhalb der Klasse und Unterklassen

---

## 4. Vererbung (Inheritance)

**Vererbung** ermöglicht es, eine neue Klasse auf Basis einer bestehenden zu erstellen. Die neue Klasse (Unterklasse/Subklasse) erbt alle Attribute und Methoden der Oberklasse (Superklasse).

```java
// Oberklasse
public class Tier {
    String name;

    public void atmen() {
        System.out.println("Das Tier atmet.");
    }
}

// Unterklasse - erbt von Tier
public class Hund extends Tier {
    public void bellen() {
        System.out.println("Wau!");
    }
}

Hund hund = new Hund();
hund.name = "Rex";
hund.atmen();  // geerbt von Tier
hund.bellen(); // eigene Methode
```

Das Schlüsselwort **`extends`** zeigt Vererbung an.

---

## 5. Methoden-Überschreibung (Method Overriding)

Eine Unterklasse kann eine Methode der Oberklasse **überschreiben** (override), um ihr eigenes Verhalten zu definieren.

```java
public class Tier {
    public String sprachAusgabe() {
        return "Das Tier macht ein Geräusch.";
    }
}

public class Katze extends Tier {
    @Override
    public String sprachAusgabe() {
        return "Miau!";
    }
}

Tier t = new Katze();
System.out.println(t.sprachAusgabe()); // Gibt "Miau!" aus
```

Die Annotation **`@Override`** zeigt an, dass eine Methode überschrieben wird.

---

## 6. Polymorphismus (Polymorphism)

**Polymorphismus** bedeutet, dass ein Objekt viele Formen annehmen kann. Eine Variable vom Typ der Oberklasse kann ein Objekt einer Unterklasse enthalten.

```java
Tier meinTier = new Hund(); // Polymorphismus
meinTier.atmen();           // funktioniert, weil Hund von Tier erbt
```

**Laufzeit-Polymorphismus:** Welche Methode aufgerufen wird, entscheidet sich erst zur Laufzeit (bei überschriebenen Methoden).

---

## 7. Abstrakte Klassen (Abstract Classes)

Eine **abstrakte Klasse** kann nicht direkt instanziiert werden. Sie kann abstrakte Methoden enthalten, die von Unterklassen implementiert werden müssen.

```java
public abstract class Form {
    // Abstrakte Methode - kein Methodenrumpf
    public abstract double flaeche();

    // Normale Methode
    public void beschreiben() {
        System.out.println("Ich bin eine Form mit Fläche: " + flaeche());
    }
}

public class Kreis extends Form {
    private double radius;

    public Kreis(double radius) {
        this.radius = radius;
    }

    @Override
    public double flaeche() {
        return Math.PI * radius * radius;
    }
}
```

---

## 8. Interfaces (Schnittstellen)

Ein **Interface** definiert einen Vertrag – es legt fest, welche Methoden eine Klasse bereitstellen muss. Anders als bei Vererbung kann eine Klasse mehrere Interfaces implementieren.

```java
public interface Schwimmbar {
    void schwimmen();
}

public interface Fliegbar {
    void fliegen();
}

public class Ente implements Schwimmbar, Fliegbar {
    @Override
    public void schwimmen() {
        System.out.println("Die Ente schwimmt.");
    }

    @Override
    public void fliegen() {
        System.out.println("Die Ente fliegt.");
    }
}
```

**Unterschied Interface vs. abstrakte Klasse:**
- Ein Interface hat (meist) keine Implementierung
- Eine Klasse kann mehrere Interfaces implementieren (`implements`)
- Eine Klasse kann nur eine abstrakte Klasse erweitern (`extends`)

---

## 9. Zusammenfassung der OOP-Prinzipien

| Prinzip | Bedeutung |
|---------|-----------|
| **Kapselung** | Daten werden verborgen und über Methoden zugänglich gemacht |
| **Vererbung** | Unterklassen erben Eigenschaften und Methoden der Oberklasse |
| **Polymorphismus** | Objekte können viele Formen annehmen; überschriebene Methoden werden zur Laufzeit aufgerufen |
| **Abstraktion** | Komplexität wird verborgen; abstrakte Klassen/Interfaces definieren nur den Vertrag |

---

## 10. Wichtige Java-Schlüsselwörter

| Schlüsselwort | Bedeutung |
|---------------|-----------|
| `class` | Klasse definieren |
| `extends` | Vererbung von einer Klasse |
| `implements` | Interface implementieren |
| `abstract` | Abstrakte Klasse oder Methode |
| `interface` | Interface definieren |
| `private` | Nur innerhalb der Klasse zugänglich |
| `public` | Überall zugänglich |
| `protected` | In der Klasse und Unterklassen zugänglich |
| `this` | Verweis auf das aktuelle Objekt |
| `super` | Verweis auf die Oberklasse |
| `new` | Neues Objekt erstellen |
| `@Override` | Methode der Oberklasse überschreiben |
