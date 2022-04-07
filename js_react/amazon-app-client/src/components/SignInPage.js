import React from 'react';
import { Session } from '../request';

export default function SignInPage() {
    const handleSubmit = (event) => {
        event.preventDefault();
        const formData = new FormData(event.currentTarget);
        Session.create({
            email: formData.get("email"),
            password: formData.get("password")
        }).then(data => {
            console.log(data);
        })
    }
    return (
        <form onSubmit={handleSubmit}>
            <div>
                <label htmlFor="email">Email</label>
                <input type="text" name="email" id="email" />
            </div>
            <div>
                <label htmlFor="password">password</label>
                <input type="text" name="password" id="password" />
            </div>
            <input type="submit" value="Submit" />
        </form>
    )
}