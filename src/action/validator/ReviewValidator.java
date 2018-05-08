package action.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import beans.ReviewCommand;

//��ȿ���˻�->����ڷκ��� �Է¹��� ���� �˻�->����� �Է��ߴ����� üũ
//1.Validator�������̽��� ���
public class ReviewValidator implements Validator {

	//1.��ȿ���˻� ������� �ƴ��� üũ �޼ҵ�(BoardCommand)DTO
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		//����)�����ų Ŭ������.isAssignableFrom(clazz��ü��)
		return ReviewCommand.class.isAssignableFrom(clazz);
	}

	/*�Խ����� �۾��⸦ �ϰ����Ҷ� ��ȿ���� �˻����ִ� �޼ҵ�
	  1.��ȿ�� �˻�����(���Է�) 2.���� �߻��� ������ ����������ü��
*/	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		//1.�����߻��� ��ü���� 2.���󿡼� �Է¹޴� �ʵ�� 3.�����ڵ��
		//required.pwd�� ã�Ƽ� ��� ���
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pwd", "required");
		//pwd�Էºκп� ���� �Է����� ������ ��ϵ� �����ڵ带 ã�Ƽ� ��� ���
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "writer", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "content", "required");
	}

}
