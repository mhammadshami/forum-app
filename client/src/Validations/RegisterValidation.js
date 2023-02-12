import * as yup from "yup";
// reg expression for password
const passwordRegExp =
  /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

export const registerSchema = yup.object().shape({
  userName: yup
    .string()
    .min(3, "Must Contain at least 3 Characters")
    .required("* required"),
  password: yup
    .string()
    .min(8, "Must Contain at least 8 Characters")
    .matches(
      passwordRegExp,
      "Must Contain at least One uppercase, one lowercase, One number and one symbol(!?% etc...)"
    )
    .required("* required"),
  confirmPassword: yup
    .string()
    .oneOf([yup.ref("password")], "passwordMustMatch")
    .required("* required"),
});
