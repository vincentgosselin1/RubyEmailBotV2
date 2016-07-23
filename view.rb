#This is the View file of the RubyEmailBot


include Java

import java.awt.GridLayout
import javax.swing.JFrame
import javax.swing.JButton
import javax.swing.JPanel
import javax.swing.JOptionPane
import javax.swing.JFileChooser
import javax.swing.filechooser::FileNameExtensionFilter

MAXEMAIL_CONST = 30 #Maximum 30 emails to send.

system "clear"
puts "Welcome to Ruby Email Bot, By Vincent Gosselin"
sleep(5)
system "clear"

class View < JFrame

    #Buttons
    JButton cvButton
    JButton clButton
    JButton configButton 
    JButton emailListButton 


    def initialize
        super "Ruby Email Bot"
        
        self.initUI
    end

    def addButtonListener(buttonListener)
        cvButton.addActionListener(buttonListener)
    end

      
    def initUI
      
        @panel = JPanel.new
        @panel.setLayout GridLayout.new 2, 2

        cvButton = JButton.new "Open CV"
        clButton = JButton.new "Open a Cover Letter"
        configButton = JButton.new "Configure your Email"
        emailListButton = JButton.new "Email List"

        #CV Button.
        #cvButton = JButton.new "Open CV"
        # cvButton.addActionListener do |e|
        #     chooseFile = JFileChooser.new
        #     filter = FileNameExtensionFilter.new "pdf files", "pdf"
        #     chooseFile.addChoosableFileFilter filter
        #     ret = chooseFile.showDialog @panel, "Choose file"
        #     if ret == JFileChooser::APPROVE_OPTION
        #         file = chooseFile.getSelectedFile
        #         puts "We got your CV : " + file.getName
        #         sleep(5)
        #         system "clear"   
        #     end    
        # end

        #CoverLetter Button.
        #clButton = JButton.new "Open a Cover Letter"
        # clButton.addActionListener do |e|
        #     chooseFile = JFileChooser.new
        #     filter = FileNameExtensionFilter.new "pdf files", "pdf"
        #     chooseFile.addChoosableFileFilter filter
        #     ret = chooseFile.showDialog @panel, "Choose file"
        #     if ret == JFileChooser::APPROVE_OPTION
        #         file = chooseFile.getSelectedFile
        #         puts "We got your Cover Letter: " + file.getName
        #         sleep(5)
        #         system "clear"      
        #     end    
        # end
        
        #configButton = JButton.new "Configure your Email"
        # configButton.addActionListener do |e|
        # validation = 0 #To validate user input.    
        #     while validation==0 do
        #         puts "Enter your email address: "
        #         @emailAddress = gets.chomp
        #         puts @emailAddress
        #         puts "Now, enter your password : "
        #         @emailPassword = gets.chomp
        #         puts @emailPassword
        #         puts "Do you confirm? Yn"
        #         i = gets.chomp
        #         if i == "Y"
        #             validation = 1  #We're done here.
        #         end
        #     end
        # puts "Email configured"
        # sleep(5)
        # system "clear"         
        # end
        
        #emailListButton = JButton.new "Email List"
        # emailListButton.addActionListener do |e|
        #     ##How many Emails?
        #     validation = 0
        #     while validation == 0 do
        #         puts "How many Emails you want to send?"
        #         i = gets.chomp
        #             if i.to_i < MAXEMAIL_CONST
        #                 validation = 1
        #                 puts "great"
        #             else
        #             puts "WARNING! You can only send " + MAXEMAIL_CONST.to_s + " emails "
        #             end
        #     end        
        #     puts "We are going to send " + i.to_s + " Emails"
        #     j = 1 #counter for entering email addresses.
        #     list = Array.new(i.to_i)
        #     until j.to_i == i.to_i+1 do
        #         puts "Enter company Email #" + j.to_s + " Right now : "
        #         list[j.to_i-1] = gets.chomp
        #         puts "                        -----> " + list[j.to_i-1].to_s
        #         j+=1
        #     end
        #     puts "Email List Configured"
        #     sleep(5)
        #     system "clear"     
        # end
            
    
        @panel.add cvButton
        @panel.add clButton
        @panel.add configButton
        @panel.add emailListButton

        self.add @panel      
      
        
        self.setDefaultCloseOperation JFrame::EXIT_ON_CLOSE
        self.setSize 300, 300
        self.setLocationRelativeTo nil
        self.setVisible true
    end
end

View.new