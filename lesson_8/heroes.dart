import 'game_character.dart';
import 'super_ability.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;
  Hero(super.name, super.health, super.damage, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int crit = damage * (RpgGame.random.nextInt(5) + 2);
    boss.health -= crit;
    print('Warrior $name hits critically with $crit');
  }
}

class Magic extends Hero {
  Magic(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.boosting);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    // TODO: implement boosting
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.blockRevert);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name reverted $blockedDamage');
  }
}

class Medic extends Hero {
  int _healPoints;
  Medic(String name, int health, int damage, this._healPoints)
    : super(name, health, damage, SuperAbility.heal);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive() && this != hero) {
        hero.health += _healPoints;
      }
    }
  }
}

class DaiceMan extends Hero {
  int daice1 = 0;
  int daice2 = 0;
  DaiceMan(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.twoDaice);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
      daice1 = (RpgGame.random.nextInt(6) + 1);
      daice2 = (RpgGame.random.nextInt(6) + 1);
      if(daice1 == daice2){
        boss.health -= daice1 + daice2;
        print("jackpot. You deal additional damage in the form of ${daice1 + daice2}");
      }else{
        List randomHero = heroes;
        final randomIndex = RpgGame.random.nextInt(randomHero.length);
        randomHero[randomIndex].health -= daice1 + daice2;
        print('Fail. You accidentally hit the ${randomHero[randomIndex]}. $daice1 + $daice2');
      }
      
      daice1 = 0;
      daice2 = 0;
    
  }
}
