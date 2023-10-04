package kr.ed.haebeop.test;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.regex.Pattern;

public class CheckValidator implements Validator {
    @Override
    public boolean supports(Class<?> clazz) {
        return Check.class.equals(clazz);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        System.out.println("Springframework Validation");
        Check check = (Check) obj;
        ValidationUtils.rejectIfEmpty(errors, "id","check.id.empty","id를 입력하세요");
        ValidationUtils.rejectIfEmpty(errors, "pw","check.pw.empty","pw를 입력하세요");

        Pattern pat1 = Pattern.compile("^[a-z0-9]{5,12}$", Pattern.CASE_INSENSITIVE);
        Pattern pat2 = Pattern.compile("^[a-zA-Z0-9]{8,12}$", Pattern.CASE_INSENSITIVE);
        if (!(pat1.matcher(check.getId()).matches())) {
            errors.rejectValue("id","check.id.invalid");
        }
        if (!(pat2.matcher(check.getPw()).matches())) {
            errors.rejectValue("pw","check.pw.invalid");
        }
    }
}
