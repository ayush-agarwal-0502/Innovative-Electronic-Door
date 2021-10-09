# Part by part Explanation of the project 
## The Photoelectrical part 
![image](https://user-images.githubusercontent.com/86561124/136603259-49699314-6484-44f5-b818-1b600484fa52.png)
![image](https://user-images.githubusercontent.com/86561124/136603220-a92e88fd-3bf8-433a-80b4-a61254240d75.png)

The LDR has the property that when light falls on it its resistance becomes negligible and when light dont fall on it its resistance goes towards infinity . Here we have used BJT as a switch . When light is falling on the LDR , output of this is 0 . When the light is interrupted , then the output is 1 . 2 of these LDRs will be placed in the photo-interruption box ( shown on the next page ) and these boxes are placed on the walls on both the sides of the door, thus enabling the door to be opened . The last LDR will be between the gate , thus if someone walks through the gate then another signal is passed for the gate to open thus preventing trapping someone between the doors 
## The Password Machine 
![image](https://user-images.githubusercontent.com/86561124/136603881-d89a06ef-7a9b-4ffb-bf3f-b6e32193de9d.png)

The user can choose whether or not to have the password through the control panel . The password can also be set through the control panel .The password machine is a very famous circuit in digital electronics , based on the property of XNOR gates that they return 1 only when both the inputs are same . The password can be inputted contactlessly through the infrared sensors , as bringing the hand closer to the IR sensor will return 1 to the circuit , else will return 0 to the circuit . 

Verilog part for password machine 

![image](https://user-images.githubusercontent.com/86561124/136604058-f8e7ca7c-dd75-4260-93e7-5a082b0faac1.png)
![image](https://user-images.githubusercontent.com/86561124/136604130-dc11576b-cf68-490b-91c8-1b6a7224fce1.png)
![image](https://user-images.githubusercontent.com/86561124/136604185-55f258a1-e667-440f-aa0e-e0d719b172d0.png)

## The Magic Counter 
![image](https://user-images.githubusercontent.com/86561124/136607330-697e5374-93dc-48a8-9e8b-ce900ba711ff.png)

One more feature of our Door is the Magic Counter i.e. this counter displays the number of times the gate has been used . Can be used to display 2 digit numbers efficiently using 7 segment displays . First the Binary Counter get the pulse from the clock and one by one these pulses gets added up i.e. when the counter receives 1 pulse the the units display will show 1, and after another pulse it will show 2 and so on. Now when 9 pulses are added the output is 1001 i.e. 9, and when the next i.e. the 10th pulse comes the output is 1010. But to display it, as 10 is a two digit number we use another Binary Counter to do the working for the second digit.  Here, when the output is 1010 i.e. the tens place is getting added up. So a AND gate is used on the 2nd and 4th bit of the output, bringing us to an output of 1 and this output is again used as a pulse to the next counter which then counts for the tens place.

Verilog code for magic counter

![image](https://user-images.githubusercontent.com/86561124/136607449-d58601ca-82fb-4947-8077-72c31b76a1a1.png)
![image](https://user-images.githubusercontent.com/86561124/136607501-8eb9dd82-8f99-4d83-9edf-d3428d1e782b.png)
![image](https://user-images.githubusercontent.com/86561124/136607582-02e0311a-9a33-4297-948e-f17c38cef373.png)
![image](https://user-images.githubusercontent.com/86561124/136607663-7985798f-109d-4e07-ab7f-239d9ce3a3c4.png)


## The Monostable Multivibrator 

The Monostable Multivibrator will be executed via the 555 timer. The monostable multivibrator is used to send a signal for a certain amount of time whenever a signal is given to it , this property can be used to keep the door open for a certain amount of time . The amount of time for which the door will remain open can be varied throught the rheostat and can be set throught the control panel .
![image](https://user-images.githubusercontent.com/86561124/136645741-1c9b75dc-0d78-4213-bdfe-0a0921a93920.png)
![image](https://user-images.githubusercontent.com/86561124/136645743-0075067d-07ac-460f-9d18-dcd5ac1a3494.png)
![image](https://user-images.githubusercontent.com/86561124/136645747-0cb8f161-2595-43c3-a4cb-8ed13606c591.png)

Verilog code for Monostable Multivibrator 

![image](https://user-images.githubusercontent.com/86561124/136645754-21238691-370d-4523-811e-319573a95665.png)
![image](https://user-images.githubusercontent.com/86561124/136645758-2f95dd4f-10c7-4533-b139-c5d5f973dbb6.png)
![image](https://user-images.githubusercontent.com/86561124/136645761-7e7ceade-12e7-4d4c-9d6e-80beea41f0e2.png)

## Crowd Factor Calculator
![image](https://user-images.githubusercontent.com/86561124/136645822-90b548d2-652c-40b1-b4fb-d9418e7cb9f1.png)
One of the unique features of this electronic door is that it can detect the number of people inside the room , and thus glow a red yellow or green led , thus showing the status of crowdedness in the room , where green means lots of space , and yellow means moderate crowd , and red means violation of social distancing norms   
Counter 1 and counter 2 will work on the signals received by the photo-electronic system , as the value held by a counter increases with edge of the input signal . Then their difference is taken using a subtractor . The difference between the no of people entered and the number of people left obviously gives us the number of people in the room . The number of people is also displayed by a 7 segment display . This no is then compared with 3 different values of number of people using a comparator , and then the output is sent to a priority encoder , which will glow the red yellow and green led respectively as per the conditions .

Verilog code for Crowd Factor calculator

![image](https://user-images.githubusercontent.com/86561124/136645842-cc8b0ce6-4fb8-4e71-be31-38cf133139bb.png)
![image](https://user-images.githubusercontent.com/86561124/136645847-861cd9ef-4f68-4d77-b790-768eba303011.png)
![image](https://user-images.githubusercontent.com/86561124/136645853-61b866f0-51e7-4eca-94da-3815b3b48e8f.png)
![image](https://user-images.githubusercontent.com/86561124/136645875-d99be5fc-4abb-464b-bf59-0b89b197f181.png)
![image](https://user-images.githubusercontent.com/86561124/136645879-701966ac-52f0-4557-bd30-ec7adf862d5d.png)

## Privacy Mode feature

One of the interesting feature of our door is the Privacy Mode. Here, the operator get the opportunity to lock the door from inside i.e. no one else could the door until the operator turns off the Privacy Mode. 
The Mechanism is very simple
When the logic state is set to 1, the NOT of it is 0 and when passed through the AND gate it get and output of 0 and hence the door remains closed.
When the logic state is set to 0, The NOT of it is 1 and when passed through the AND gate, and if the password is also correct then the total output is 1 and hence the door will move and the Privacy Mode will be turned off        

![image](https://user-images.githubusercontent.com/86561124/136645915-b38af283-7384-48d7-9954-6bb1f83253ad.png)

## The Fan and Light feature 

There is another motor attached parallel to the motor which controls the gate . It is used as a fan which will only remain on for the time for which the person passes under the gate .  There is also another fan and bulb in the gate attached to the output of the comparator of the top of circuit , it switches on and will remain on till the time there is at least one person in the room .

![image](https://user-images.githubusercontent.com/86561124/136645945-a5c34409-4bb5-49cd-aa8a-05739b3965a4.png)
![image](https://user-images.githubusercontent.com/86561124/136645948-a76757e7-bb92-47a0-8a81-da6bdf3c4a20.png)

## Fire Alarm feature 

Here, we use LM35 sensors, which are precision integrated-circuit temperature device. 
We would have 2 LM35’s at the ends of corridor and we use an Op-Amp in substractor configuration to measure the temperature difference. As soon as the temperature difference reaches value greater than 20°C or less than -20C, the Op-Amp sends a signal to comparator triggering the fire alarm.
A change in temperature as high as 20°C signifies a sudden increase in the temperature of the room wrt the other room that is very high, which is most likely caused by fire. It should also be taken into account that the ceiling temperature are hottest when fire breaks, so it is more sensible to attach the LM35 sensors on the ceiling of the corridor. The difference of 20°C should be more than enough as the starting temperatures of an average fire can be as low as 100°C whereas an average temperature in Indian rooms can reach 50°C at max , and temperature difference across the corridor is not likely to cross 20C in any case other than fire.
This fire alarm feature is very cheap.

![image](https://user-images.githubusercontent.com/86561124/136645964-3942dbec-d0c4-4c3f-8121-e5ed5bb22b25.png)
![image](https://user-images.githubusercontent.com/86561124/136645991-bab34b25-9a11-4829-9828-1331957f980e.png)

## The gate - Physical Mechanism 

The motor rotates the circular gear , which then rotates the linear gear , which is attached to the top of the door . Then , simultaneously , when the open signal is given , the solenoid is activated and it acts as a electromagnet , which sticks to the door and does not let it go until the open signal is removed . It is not feasible to directly use an electromagnet to open the door against the spring force , hence we have used this combination of motor , gears , and electromagnet . The door is spring loaded , i.e. when the open signal is stopped being given , then the door will close automatically due to the springs .
















