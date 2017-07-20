using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Dice
/// </summary>
public class Dice
{
    private static int generateRandom(int Low, int High)
    {
        Random rndNum = new Random(int.Parse(Guid.NewGuid().ToString().Substring(0, 8), System.Globalization.NumberStyles.HexNumber));
        int rnd = rndNum.Next(Low, High);
        return rnd;
    }
    public static int getBaseStat()
    {
        return generateRandom(10, 18);
    }
    public static int random(int low, int high)
    {
        return generateRandom(low, high);
    }
}