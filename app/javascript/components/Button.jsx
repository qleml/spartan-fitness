// app/javascript/components/Button.js
import React, { useState } from 'react';

const Button = () => {
    const [clicked, setClicked] = useState(false);

    const handleClick = () => {
        setClicked(!clicked);
    };

    return (
        <button
            onClick={handleClick}
            style={{
                backgroundColor: clicked ? 'blue' : 'gray',
                color: 'white',
                padding: '10px 20px',
                border: 'none',
                borderRadius: '5px',
                cursor: 'pointer'
            }}
        >
            {clicked ? 'Clicked' : 'Click Me'}
        </button>
    );
};

export default Button;
