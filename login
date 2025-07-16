import React from 'react';
import { useFormik } from 'formik';
import * as Yup from 'yup';
import DOMPurify from 'dompurify';


const validationSchema = Yup.object({

  Name: Yup.string()
  .required('Name is required')
  .matches(/^[a-zA-Z\s]+$/, 'Only alphabets and spaces are allowed'),

  email: Yup.string()
    .email('Invalid email format')
    .required('Email is required'),

     Phone: Yup.string()
    .matches(/^[6-9]\d{9}$/, 'Phone must be a valid 10-digit Indian number')
    .required('Phone number is required'),


  password: Yup.string()
    .matches(/^(?=.*[a-zA-Z])(?=.*\d)[A-Za-z\d]{12,}$/, 'Password must be 12 characters and alphanumeric')
    .required('Password is required'),
});

const LoginSignup = () => {
  const formik = useFormik({
    initialValues: { email: '', password: '',Phone:'',Name:'', },
    validationSchema,
    onSubmit: (values) => {
      const sanitizedValues = {
        email: DOMPurify.sanitize(values.email),
        password: DOMPurify.sanitize(values.password),
         Phone: DOMPurify.sanitize(values.Phone),
         phone: DOMPurify.sanitize(values.Name),

      };

      console.log('Sanitized form data:', sanitizedValues);
      alert('Form submitted successfully!');
    },
  });

  return (
    <div style={styles.container}>
      <h2>Signup</h2>
      <form onSubmit={formik.handleSubmit} style={styles.form}>
       
       <input
          name="Name"
          type="Name"
          placeholder="Name"
          onChange={formik.handleChange}
          onBlur={formik.handleBlur}
          value={formik.values.Name}
          style={styles.input}
        />
        {formik.touched.Name && formik.errors.Name && (
          <p style={styles.error}>{formik.errors.Name}</p>
        )}
        <input
          name="email"
          type="email"
          placeholder="email"
          onChange={formik.handleChange}
          onBlur={formik.handleBlur}
          value={formik.values.email}
          style={styles.input}
        />
        {formik.touched.email && formik.errors.email && (
          <p style={styles.error}>{formik.errors.email}</p>
        )}

         <input
          name="Phone"
          type="Phone"
          placeholder="Phone"
          onChange={formik.handleChange}
          onBlur={formik.handleBlur}
          value={formik.values.Phone}
          style={styles.input}
        />
        {formik.touched.Phone && formik.errors.Phone && (
          <p style={styles.error}>{formik.errors.Phone}</p>
        )}


        <input
          name="password"
          type="password"
          placeholder="Password (12+ alphanumeric)"
          onChange={formik.handleChange}
          onBlur={formik.handleBlur}
          value={formik.values.password}
          style={styles.input}
        />
        {formik.touched.password && formik.errors.password && (
          <p style={styles.error}>{formik.errors.password}</p>
        )}

        <button type="submit" style={styles.button}>Submit</button>
      </form>
    </div>
  );
};

const styles = {
  container: { width: '320px', margin: '50px auto', fontFamily: 'Arial' },
  form: { display: 'flex', flexDirection: 'column', gap: '15px'  },
  input: { padding: '10px', fontSize: '16px' },
  button: { padding: '12px',  color: 'black', border: 'none' },
  error: { color: 'red', fontSize: '14px' },
};

export default LoginSignup;
