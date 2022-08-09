*** Settings ***
Library             RequestsLibrary
Library             JSONLibrary
Library             Collections


*** Variables ***
${API_BASE}         https://qa-interview.srcli.xyz




*** Test Cases ***
TS_1
    Create Session              API_Testing                 ${API_BASE}               
    ${body}=                    create dictionary           username=root       password=root123
    ${Post_Response}=           POST On Session             API_Testing                 /login              data=${body}  
    log to console              ${Post_Response.status_code}
    
    ${status}                   convert to string           ${Post_Response.status_code}                        
    should be equal             ${status}                   200
    
    ${Get_Response} =           GET On Session              API_Testing             /data
    log to console              ${Get_Response}
    ${status_data}              convert to string           ${Get_Response.status_code}     
    should be equal             ${status_data}              200
    
    ${Get_Response} =           GET On Session              API_Testing             /logout
    log to console              ${Get_Response}
    ${status_logout}            convert to string           ${Get_Response.status_code}     
    should be equal             ${status_data}              200

    ${Get_Response} =           GET On Session              API_Testing             /data
    log to console              ${Get_Response}
    ${status_data}              convert to string           ${Get_Response.status_code}     
    should be equal             ${status_data}              302
    
    # #verifikasi status
    # ${status_code} =             convert to string           ${Post_Response.status_code}
    # should be equal              ${status_code}              401   


# User should be able to GET login if session_id haven't set

#     #verifikasi status
#     ${status_code} =             convert to string           ${Get_Response.status_code}
#     should be equal              ${status_code}              200   

#     #Verifikasi response body
#     ${response_body} =           convert to string           ${Get_Response.content}
#     should contain               ${response_body}            <form action="/login" method="post">

#     #Verifikasi header
#     ${contentTypeValue}         get from dictionary          ${Get_Response.headers}         Content-Type
#     should be equal             ${contentTypeValue}          text/html; charset=utf-8

# User should be able to GET login if session_id have set
#     Create Session              API_Testing                 ${API_BASE}               
#     ${Get_Response} =           GET On Session              API_Testing             /login    
#     Log to console              ${Get_Response.status_code}
#     Log to console              ${Get_Response.content}

#     #verifikasi
#     ${status_code} =             convert to string           ${Get_Response.status_code}
#     should be equal              ${status_code}              200   

#     # ${response_body} =           convert to string           ${Get_Response.content}
#     # should contain               ${response_body}            <form action="/login" method="post">

# User should be able to POST login if session_id haven't set
#     Create Session              API_Testing                 ${API_BASE}               
#     ${body}=                    create dictionary           username=root       password=root123
#     ${Post_Response}=           POST On Session             API_Testing                 /login              data=${body}  
#     log to console              ${Post_Response.status_code} 
#     log to console              ${Post_Response.content} 

#     #verifikasi status
#     ${status_code} =             convert to string           ${Post_Response.status_code}
#     should be equal              ${status_code}              200   

#     #Verifikasi response body
#     ${response_body} =           convert to string           ${Post_Response.content}
#     should contain               ${response_body}            <h1>Welcome!

# User should be able to POST login if session_id have set
#     Create Session              API_Testing                 ${API_BASE}               
#     ${body}=                    create dictionary           username=root       password=root123
#     ${Post_Response}=           POST On Session             API_Testing                 /login              data=${body}   

#      #verifikasi status
#     ${status_code} =             convert to string           ${Post_Response.status_code}
#     should be equal              ${status_code}              200                                
                       
# User should be able to POST login if username & password not valid
#     Create Session              API_Testing                 ${API_BASE}               
#     ${body}=                    create dictionary           username=xxxx       password=xxxxx
#     ${Post_Response}=           POST On Session             API_Testing                 /login              data=${body}  
#     log to console              ${Post_Response.status_code} 

#     #verifikasi status
#     ${status_code} =             convert to string           ${Post_Response.status_code}
#     should be equal              ${status_code}              401   

# User should be able to GET data if session_id haven't set
#     Create Session              API_Testing                 ${API_BASE}               
#     ${Get_Response} =           GET On Session              API_Testing             /data    
#     Log to console              ${Get_Response.status_code}
#     Log to console              ${Get_Response.content}

#     #verifikasi status
#     ${status_code} =             convert to string           ${Get_Response.status_code}
#     should be equal              ${status_code}              200   

#     #Verifikasi response body
#     ${response_body} =           convert to string           ${Get_Response.content}
#     should contain               ${response_body}            <form action="/login" method="post">

#     #Verifikasi header
#     ${contentTypeValue}         get from dictionary          ${Get_Response.headers}         Content-Type
#     should be equal             ${contentTypeValue}          text/html; charset=utf-8

# User should be able to GET login if session_id have set
#     Create Session              API_Testing                 ${API_BASE}               
#     ${Get_Response} =           GET On Session              API_Testing             /data
#     ${header}=                  create dictionary           Cookie=username:root   
#     Log to console              ${Get_Response.status_code}
#     Log to console              ${Get_Response.content}

#     #verifikasi
#     ${status_code} =             convert to string           ${Get_Response.status_code}
#     should be equal              ${status_code}              200   

#     ${response_body} =           convert to string           ${Get_Response.content}
#     should contain               ${response_body}            <h1>Pemasukan</h1>

# User should be able to get 404 
#     Create Session              API_Testing                 ${API_BASE}               
#     ${Get_Response} =           GET On Session              API_Testing             /Register   
#     Log to console              ${Get_Response.status_code}
#     Log to console              ${Get_Response.content}

#     #verifikasi status
#     ${status_code} =             convert to string           ${Get_Response.status_code}
#     should be equal              ${status_code}              404   


