using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Battle : System.Web.UI.Page
{
    static Character user = null;
    static Character comp = null;
    static int turn = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            user = (Character)Session["character"];
            lblUserName.Text = user.name;
            lblUserRace.Text = Convert.ToString(user.race);
            lblUserClass.Text = Convert.ToString(user.charClass);
            lblUserAttBonus.Text = Convert.ToString(user.AB);
            lblUserAC.Text = Convert.ToString(user.AC);

            comp = new Character();
            lblCompName.Text = comp.name;
            lblCompRace.Text = Convert.ToString(comp.race);
            lblCompClass.Text = Convert.ToString(comp.charClass);
            lblCompAttBonus.Text = Convert.ToString(comp.AB);
            lblCompAC.Text = Convert.ToString(comp.AC);


            txtUserMaxHealth.Text = Convert.ToString(user.health);
            UserMaxHealth.Text = Convert.ToString(user.health);

            txtCompMaxHealth.Text = Convert.ToString(comp.health);
            compMaxHealth.Text = Convert.ToString(comp.health);

            if (comp.initiative > user.initiative)
                turn = comp.speed;

            else turn = user.speed;
        }
        txtCompCurrentHealth.Text = Convert.ToString(comp.health);
        txtUserCurrentHealth.Text = Convert.ToString(user.health);
        userCurrentHealth.Text = Convert.ToString(user.health);
        compCurrentHealth.Text = Convert.ToString(comp.health);
    }
    protected void btnBattle_Click(object sender, EventArgs e)
    {
        turn++;
        if ((turn % comp.speed) == 0)
            comp.health -= takeTurn(user, comp);

        if ((turn % user.speed) == 0)
            user.health -= takeTurn(comp, user);


        if (comp.health <= 0)
        {
            //set winner banner
            userWinner.Text = "Victory !!";
            userWinner.ForeColor.Equals(System.Drawing.Color.Green);
            compWinner.Text = "Defeat !!";
            compWinner.ForeColor.Equals(System.Drawing.Color.Red);
            compWinner.Visible = true;
            userWinner.Visible = true;
            btnBattle.Visible = false;
            btnReplay.Visible = true;
            record("Human Wins!!");
        }


        else if (user.health <= 0)
        {
            //set winner banner
            compWinner.Text = "Victory !!";
            compWinner.ForeColor.Equals(System.Drawing.Color.Green);
            compWinner.Visible = true;
            userWinner.Text = "Defeat !!";
            userWinner.ForeColor.Equals(System.Drawing.Color.Red);
            userWinner.Visible = true;
            btnBattle.Visible = false;
            btnReplay.Visible = true;
            record("Computer Wins!!");
        }
    }
    private int takeTurn(Character attacker, Character defender)
    {
        //battle process
        int damage = 0;
        int attackRoll = Dice.random(1, 20);

        //automatic miss
        if (attackRoll == 1)
        {
            record(attacker.who + "missed.");
        }
        //critical hit
        else if (attackRoll >= attacker.weapon.lowCrit && attackRoll <= attacker.weapon.highCrit)
        {
            //regular hit +
            for (int x = 0; x < attacker.weapon.roll; x++)
                damage += (Dice.random(1, attacker.weapon.damage) + attacker.damageBonus);

            record(attacker.who + "hits "+defender.who+": -"+damage+" crit chance");
            //roll again, to see if you hit again
            if ((Dice.random(1, 20) + attacker.AB) >= defender.AC)
            {
                int temp = 0;

                //calculate regular hit
                for (int x = 0; x < attacker.weapon.roll; x++)
                    temp += (Dice.random(1, attacker.weapon.damage) + attacker.damageBonus);

                //add crit hit to total damage for the round
                damage += temp * attacker.weapon.critFactor;
                record(attacker.who + "CRITICALLY hits " + defender.who + ": -" + damage + "**crit");
            }
        }
        //regular hit
        else if ((attackRoll + attacker.AB) >= defender.AC)
        {
            for (int x = 0; x < attacker.weapon.roll; x++)
                damage += (Dice.random(1, attacker.weapon.damage) + attacker.damageBonus);

            record(attacker.who + "hits " + defender.who + ": -" + damage);
        }
        //miss
        else record(attacker.who + "missed.");

        return damage;
    }
    private void record(string message)
    {
        history.Text += message + "\n";
    }
    protected void btnReplay_Click(object sender, EventArgs e)
    {
        Response.Redirect("DnD.aspx");
    }
}