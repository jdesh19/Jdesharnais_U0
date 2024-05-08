# Jaron Desharnais U0 part 3
puts"Enter your Subtotal: "
sub_total = gets.to_f


GST = 5
PST = 7

def get_grand_total(sub_total)
    

    pst_dollar_amount = (PST * sub_total) / 100.0
    gst_dollar_amount = (GST * sub_total) / 100.0

    total_tax_amount = pst_dollar_amount + gst_dollar_amount

    grand_total = sub_total + total_tax_amount

    
    if(grand_total <= 5.0)
        message = "Pocket Change"
    elsif(grand_total > 5.0 and grand_total < 20.0)
        message = "Wallet Time"
    elsif(grand_total > 20.0)
        message = "Charge It!"
    end


    puts "Subtotal: $#{sub_total}"
    puts "PST: $#{pst_dollar_amount} - #{PST}%"
    puts "GST: $#{gst_dollar_amount} - #{GST}%"
    puts "Grand Total: $#{grand_total}"
    puts message

end

if sub_total == 0 
    puts "Please enter a number for the Subtotal"
    sub_total = gets.to_f
end

get_grand_total(sub_total)
