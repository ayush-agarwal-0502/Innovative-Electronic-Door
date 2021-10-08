# Innovative-Electronic-Door
## Digital electronics and verilog project
## Introduction
My name is Ayush Agarwal . I'm an electronics engineering student at IIT BHU Varanasi .This is a project I made for the event "Navyantra" (electronics event) held under "Takshak" , the robotics fest of IIT ISM Dhanabad . It consists of a very unique electronic door which I invented using the basic principles of digital electronics , which has multiple features keeping in mind the coronavirus pandemic situation. I've also made the verilog model for the project .
## Key features of the Door:
1. The door can be opened from both the sides contactlessly , using a photointerruption mechanism . The person can open the door just by interrupting the light by placing his/her hand in the photointerruption box, which sends the required signals . Thus the gate can be opened contactlessly , preventing the spread of coronavirus . This is better than the existing technologies as in the existing technology , whenever someone walks in front of the door , it opens , thus making the door useless in narrow corridors of places such as schools and offices . 
2. 
![image](https://user-images.githubusercontent.com/86561124/136600918-e2fa2b0b-101c-4356-9946-a290474a6e72.png)
![image](https://user-images.githubusercontent.com/86561124/136600983-b5088d2f-4164-41d8-bf42-1f50d9c732a8.png)

2. The door can detect the presence of a person between the gates and remain open , thus avoiding crushing a person . 
3. The door can be operated in multiple modes :
  
a) Privacy Mode : Once this is activated from the control panel , the gate cannot be opened .

b) Password Mode : If this mode is selected from the control panel, the person who wants to enter the room must input a password . However , the unique feature is that the password can also be inputted contactlessly , by placing hand in front of the correct infrared sensors . 

c) Open mode : The gate remains open .

d) Emergency mode : The gate remains open and a siren keeps ringing .

4. The door can also detect fire and open itself and ring a fire alarm . 
5. The door is highley cost effective , it costs less than 1000 rupees which is much much less than the competing technologies presently in use .
6. The amount of time for which the door has to remain open can also be set by the control panel .
7. The door will automatically switch on a light and a fan if there is atleast one person in the room .
8. The door can detect the number of people in the room and thus glow a green , yellow or red LED , depending on the crowdiness in the room , thus being an indicator of social distancing norms in the room .

## Working of the door 
## Overall working 
![image](https://user-images.githubusercontent.com/86561124/136602997-6cb5cd8b-125f-45e2-adc4-8f388863cdd3.png)
![image](https://user-images.githubusercontent.com/86561124/136603018-1bbeaaff-4c09-4700-89f6-5d4413477b0e.png)
## Now explaining it part by part 
### The Photoelectrical part 
![image](https://user-images.githubusercontent.com/86561124/136603259-49699314-6484-44f5-b818-1b600484fa52.png)
![image](https://user-images.githubusercontent.com/86561124/136603220-a92e88fd-3bf8-433a-80b4-a61254240d75.png)

The LDR has the property that when light falls on it its resistance becomes negligible and when light dont fall on it its resistance goes towards infinity . Here we have used BJT as a switch . When light is falling on the LDR , output of this is 0 . When the light is interrupted , then the output is 1 . 2 of these LDRs will be placed in the photo-interruption box ( shown on the next page ) and these boxes are placed on the walls on both the sides of the door, thus enabling the door to be opened . The last LDR will be between the gate , thus if someone walks through the gate then another signal is passed for the gate to open thus preventing trapping someone between the doors 
### The Password Machine 
![image](https://user-images.githubusercontent.com/86561124/136603881-d89a06ef-7a9b-4ffb-bf3f-b6e32193de9d.png)

The user can choose whether or not to have the password through the control panel . The password can also be set through the control panel .The password machine is a very famous circuit in digital electronics , based on the property of XNOR gates that they return 1 only when both the inputs are same . The password can be inputted contactlessly through the infrared sensors , as bringing the hand closer to the IR sensor will return 1 to the circuit , else will return 0 to the circuit . 

Verilog part for password machine 

![image](https://user-images.githubusercontent.com/86561124/136604058-f8e7ca7c-dd75-4260-93e7-5a082b0faac1.png)
![image](https://user-images.githubusercontent.com/86561124/136604130-dc11576b-cf68-490b-91c8-1b6a7224fce1.png)
![image](https://user-images.githubusercontent.com/86561124/136604185-55f258a1-e667-440f-aa0e-e0d719b172d0.png)

### The Magic Counter 
![image](https://user-images.githubusercontent.com/86561124/136607330-697e5374-93dc-48a8-9e8b-ce900ba711ff.png)
![image](https://user-images.githubusercontent.com/86561124/136607449-d58601ca-82fb-4947-8077-72c31b76a1a1.png)
![image](https://user-images.githubusercontent.com/86561124/136607501-8eb9dd82-8f99-4d83-9edf-d3428d1e782b.png)
![image](https://user-images.githubusercontent.com/86561124/136607582-02e0311a-9a33-4297-948e-f17c38cef373.png)
![image](https://user-images.githubusercontent.com/86561124/136607663-7985798f-109d-4e07-ab7f-239d9ce3a3c4.png)

One more feature of our Door is the Magic Counter i.e. this counter displays the number of times the gate has been used . Can be used to display 2 digit numbers efficiently using 7 segment displays . First the Binary Counter get the pulse from the clock and one by one these pulses gets added up i.e. when the counter receives 1 pulse the the units display will show 1, and after another pulse it will show 2 and so on. Now when 9 pulses are added the output is 1001 i.e. 9, and when the next i.e. the 10th pulse comes the output is 1010. But to display it, as 10 is a two digit number we use another Binary Counter to do the working for the second digit.  Here, when the output is 1010 i.e. the tens place is getting added up. So a AND gate is used on the 2nd and 4th bit of the output, bringing us to an output of 1 and this output is again used as a pulse to the next counter which then counts for the tens place.

### The Monostable Multivibrator 






