package pl.coderslab.finalproject;

import lombok.SneakyThrows;
import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;

import java.lang.reflect.Field;
import java.time.LocalDate;
import java.util.Date;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CompareDateValidator implements ConstraintValidator <CompareDate, Object> {

    private String beforeFieldName;
    private String afterFieldName;
    private String message;

    @Override
    public void initialize(CompareDate constraintAnnotation) {
        this.beforeFieldName = constraintAnnotation.before();
        this.afterFieldName = constraintAnnotation.after();
        this.message = constraintAnnotation.message();
    }

    @SneakyThrows
    @Override
    public boolean isValid(Object value, final ConstraintValidatorContext context) {

        Object beforeDateFieldValue = new BeanWrapperImpl(value).getPropertyValue(beforeFieldName);
        Object afterDateFieldValue = new BeanWrapperImpl(value).getPropertyValue(afterFieldName);

        LocalDate beforeDate = (LocalDate) beforeDateFieldValue;
        LocalDate afterDate = (LocalDate) afterDateFieldValue;


        boolean isValid = beforeDate != null && beforeDate.isBefore(afterDate);

              if (!isValid) {
                      context.disableDefaultConstraintViolation();
                       context
                               .buildConstraintViolationWithTemplate(message)
                               .addPropertyNode(afterFieldName)
                               .addConstraintViolation();
                   }

               return isValid;
           }
}
