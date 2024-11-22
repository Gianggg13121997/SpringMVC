package controller;

import model.Money;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/change")
public class ChangeMoney {
    @GetMapping("/change")
    public String showFormChange(Model model) {
        model.addAttribute("money", new Money());
        return "change";
    }
    private final double rate = 24000.0;
@PostMapping("/change")
     public String Change(Model model, @ModelAttribute("money") Money money) {
    double usd = money.getVnd() / rate;
    money.setUsd(usd);
    model.addAttribute("money", money);
    return "change";

}
}
