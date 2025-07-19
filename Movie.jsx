
import axios from "axios";
import { useEffect, useState } from "react";
import {Card} from "./components/UI/Card";


export const Movie = () => {
    const [data, setData] = useState([]);
    const API = "https://www.omdbapi.com/?i=tt3896198&apikey=1c12799f&s=titanic&p";
   
    const getMovieData = async() => {
        try{
            const res = await axios.get (API);
            console.log(res.data.Search);
            setData(res.data.Search);
        } catch (error){
            console.log(error);
        }
         
    }
    
    useEffect(()=>{
      getMovieData();
    },[]);
    return( <ur className="container">
        {data.map((curElem)=>{
        return <Card key={curElem.imdbID} movieData={curElem}/>
        })}
    </ur>
    )
};


