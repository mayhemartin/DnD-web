using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Weapon
{
    public enum cat {Light, One, Two, Range };

    protected cat weapType { get; private set; }
    protected int weapRoll { get; private set; }
    protected int weapDmg { get; private set; }
    protected int weapLC { get; private set; }
    protected int weapHC { get; private set; }
    protected int weapC { get; private set; }
    protected int weapWeight { get; private set; }

    public virtual cat category
    { get { return weapType; } }
    public virtual int roll
    { get { return weapRoll; } }
    public virtual int damage
    { get { return weapDmg; } }
    public virtual int lowCrit
    { get { return weapLC; } }
    public virtual int highCrit
    { get { return weapHC; } }
    public virtual int critFactor
    { get { return weapC; } }
    public virtual int weight
    { get { return weapWeight; } }

	public Weapon(cat category,int roll, int damage, int lowCrit, int highCrit, int crit, int weight)
	{
        weapType = category;
        weapRoll = roll;
        weapDmg = damage;
        weapLC = lowCrit;
        weapHC = highCrit;
        weapC = crit;
        weapWeight = weight;
	}
}
public class Dagger : Weapon
{
    public Dagger() : base(cat.Light, 1, 3, 19, 20, 3, 1) { }
}
public class Mace : Weapon
{
    public Mace() : base(cat.One, 1, 6, 20, 20, 2, 8) { }
}
public class Quarterstaff : Weapon
{
    public Quarterstaff() : base(cat.Two, 2, 4, 20, 20, 2, 4) { }
}
public class Crossbow : Weapon
{
    public Crossbow() : base(cat.Range, 1, 8, 19, 20, 2, 8) { }
}
public class Shortsword : Weapon
{
    public Shortsword() : base(cat.Light, 1, 4, 19, 20, 2, 2) { }
}
public class Longsword : Weapon
{
    public Longsword() : base(cat.One, 1, 6, 19, 20, 2, 4) { }
}
public class Battleaxe : Weapon
{
    public Battleaxe() : base(cat.One, 1, 6, 20, 20, 3, 6) { }
}
public class Greataxe : Weapon
{
    public Greataxe() : base(cat.Two, 1, 10, 20, 20, 3, 12) { }
}
public class Falchion : Weapon
{
    public Falchion() : base(cat.Two, 1, 6, 18, 20, 2, 8) { }
}
public class Longbow : Weapon
{
    public Longbow() : base(cat.Range, 1, 6, 20, 20, 3, 3) { }
}
public class Kama : Weapon
{
    public Kama() : base(cat.Light, 1, 4, 20, 20, 2, 2) { }
}
public class Waraxe : Weapon
{
    public Waraxe() : base(cat.Two, 1, 8, 20, 20, 3, 8) { }
}
public class Urgosh : Weapon
{
    public Urgosh() : base(cat.Two, 2, 5, 20, 20, 3, 12) { }
}
public class Sickle : Weapon
{
    public Sickle() : base(cat.Light, 1, 4, 20, 20, 2, 2) { }
}
public class Pick : Weapon
{
    public Pick() : base(cat.Light, 1, 3, 20, 20, 4, 3) { }
}
public class Rapier : Weapon
{
    public Rapier() : base(cat.One, 1, 4, 18, 20, 2, 2) { }
}
public class Warhammer : Weapon
{
    public Warhammer() : base(cat.One, 1, 6, 20, 20, 3, 5) { }
}
public class Shortbow : Weapon
{
    public Shortbow() : base(cat.Range, 1, 4, 20, 20, 3, 2) { }
}
public class Bolas : Weapon
{
    public Bolas() : base(cat.Range, 1, 3, 20, 20, 2, 2) { }
}
public class Javelin : Weapon
{
    public Javelin() : base(cat.Range, 1, 4, 20, 20, 2, 2) { }
}