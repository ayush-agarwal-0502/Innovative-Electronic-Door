# Other related information of this project 
## Cost 
![image](https://user-images.githubusercontent.com/86561124/136646432-1fdf21f6-c347-4f40-af0b-194e45627364.png)
![image](https://user-images.githubusercontent.com/86561124/136646438-482520ee-7446-4708-854f-1d954d0c4b80.png)

TOTAL = 850 rupees for this project , which is much much better than an arduino or a microprocessor operated electronic system 

## Few Limitations and their rough solutions 

If more than 1 person enters when gate opened , gate only counts them as one person entered - To tackle this problem , we can attach a sanitiser dispenser to our photointerrupter
box and make it compulsory to sanitise before entering , so that each person blocks the light in the photoelectronic circuit once and is counted . Another alternative I found to 
remove this problem is to think of a circuit which can detect whether a person is going in or out . This can probably be achieved by using 2 LDR light groups across the door and 
on the basis of which is triggered first and which later , it should respond accordingly (maybe this can be achieved by using 2 bistable multivibrators for each light , and then
make a sequential circuit accordingly to do our work ). 
If 16+people enter in a day and less than 16 leave , the substractor would have to get negative - This problem can be solved by using a comparator to find the bigger number , 
then activating 2 different substractors according to the comparator output , and then displaying the correct output , this model can also be used when there is another entry to 
the room , and there is a chance that more people left the room than entered . 
If the environment is too bright , it may not be able to detect the interruption - To solve this problem , we can make sure that the photoelectronic part activates at a strong 
intensity of light and attach a strong light source to the box . Furthermore , shades can be developed over the cylindrical structure of box which can easily cover from
sunlight / tubelight . And even this photoelectric mechanism can be replaced by infrared mechanism based on similar design .


