#!/usr/local/bin/jruby

# ZetCode JRuby Swing tutorial
# 
# This program demonstrates
# message dialogs.
# 
# author: Jan Bodnar
# website: www.zetcode.com
# last modified: December 2010


include Java

import java.awt.GridLayout
import javax.swing.JFrame
import javax.swing.JButton
import javax.swing.JPanel
import javax.swing.JOptionPane
import javax.swing.JFileChooser
import javax.swing.filechooser::FileNameExtensionFilter

MAXEMAIL_CONST = 30 #Maximum 30 emails to send.


class Example < JFrame
  
    def initialize
        super "Ruby Email Bot"
        
        self.initUI
    end
      
    def initUI
      
        @panel = JPanel.new
        @panel.setLayout GridLayout.new 3, 2

        #CV Button.
        cvButton = JButton.new "Open CV"
        cvButton.addActionListener do |e|
            chooseFile = JFileChooser.new
            filter = FileNameExtensionFilter.new "pdf files", "pdf"
            chooseFile.addChoosableFileFilter filter
            ret = chooseFile.showDialog @panel, "Choose file"
            if ret == JFileChooser::APPROVE_OPTION
                file = chooseFile.getSelectedFile
                puts "We got your CV : " + file.getName
                #text = self.readFile file
                #@area.setText text.to_s     
            end    
        end

        #CoverLetter Button.
        clButton = JButton.new "Open a Cover Letter"
        clButton.addActionListener do |e|
            chooseFile = JFileChooser.new
            filter = FileNameExtensionFilter.new "pdf files", "pdf"
            chooseFile.addChoosableFileFilter filter
            ret = chooseFile.showDialog @panel, "Choose file"
            if ret == JFileChooser::APPROVE_OPTION
                file = chooseFile.getSelectedFile
                puts "We got your Cover Letter: " + file.getName
                #text = self.readFile file
                #@area.setText text.to_s     
            end    
        end
        
        configButton = JButton.new "Configure your Email"
        configButton.addActionListener do |e|
        validation = 0 #To validate user input.    
            while validation==0 do
                puts "Enter your email address: "
                @emailAddress = gets.chomp
                puts @emailAddress
                puts "Now, enter your password : "
                @emailPassword = gets.chomp
                puts @emailPassword
                puts "Do you confirm? Yn"
                i = gets.chomp
                if i == "Y"
                    validation = 1  #We're done here.
                end
            end
        puts "Email configured"        
        end
        
        emailListButton = JButton.new "Email List"
        emailListButton.addActionListener do |e|
            ##How many Emails?
            validation = 0
            while validation == 0 do
                puts "How many Emails you want to send?"
                i = gets.chomp
                    if(i < MAXEMAIL_CONST)
                    validation = 1
                    puts "great"
                    end
                puts "You have maximum :" + MAXEMAIL_CONST.to_s + " emails you can send"   
            end        
            puts "We are going to send " + i.to_s + " Emails"
            j = 1 #counter for entering email addresses.
            list = Array.new(i)
            # until j == i do
            #     puts "Enter company Email #" + j.to_s + " Right now : "
            #     list[j-1] = gets.chomp
            #     puts list[j-1].to_s
            #     j++
            # end   
        end


            
    
        @panel.add cvButton
        @panel.add clButton
        @panel.add configButton
        @panel.add emailListButton

        self.add @panel      
      
        
        self.setDefaultCloseOperation JFrame::EXIT_ON_CLOSE
        self.setSize 600, 600
        self.setLocationRelativeTo nil
        self.setVisible true
    end
end

Example.new