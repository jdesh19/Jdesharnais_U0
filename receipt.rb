# Jaron Desharnais U0 part 1
sub_total = 30
GST = 5
PST = 7

def get_grand_total(sub_total)
    

    pst_dollar_amount = (PST * sub_total) / 100.0
    gst_dollar_amount = (GST * sub_total) / 100.0

    total_tax_amount = pst_dollar_amount + gst_dollar_amount

    grand_total = sub_total + total_tax_amount

    puts "Subtotal: $#{sub_total}"
    puts "PST: $#{pst_dollar_amount} - #{PST}%"
    puts "GST: $#{gst_dollar_amount} - #{GST}%"
    puts "Grand Total: $#{grand_total}"
end

get_grand_total(sub_total)
