CREATE TABLE ConsumerComplaints (
    Datereceived DATE,                            -- Fecha en que se recibió la queja
    Product NVARCHAR(MAX),                           -- Producto relacionado con la queja
    Sub_product NVARCHAR(MAX),                     -- Subproducto relacionado con la queja
    Issue NVARCHAR(MAX),                             -- Tipo de queja
    Sub_issue NVARCHAR(MAX),                       -- Subcategoría del tipo de queja
    Consumer_complaint_narrative NVARCHAR(MAX),    -- Narrativa de la queja del consumidor
    Company_public_response NVARCHAR(MAX),         -- Respuesta pública de la empresa
    Company NVARCHAR(MAX),                           -- Nombre de la empresa
    State NVARCHAR(MAX),                              -- Estado del consumidor
    ZIP_code NVARCHAR(MAX),                        -- Código postal del consumidor
    Tags NVARCHAR(MAX),                             -- Etiquetas asociadas con la queja
    Consumer_consent_provided NVARCHAR(MAX),               -- Indicador de consentimiento del consumidor
    Submitted_via NVARCHAR(MAX),                   -- Medio de envío de la queja
    DateSentToCompany DATE,                     -- Fecha en que se envió la queja a la empresa
    Company_response_consumer NVARCHAR(MAX),   -- Respuesta de la empresa al consumidor
    Timely_response NVARCHAR(MAX),                         -- Indicador de si la respuesta fue a tiempo
    Consumer_disputed NVARCHAR(MAX),                       -- Indicador de si el consumidor disputó la resolución
    Complaint_ID NVARCHAR(MAX)                    -- ID único para la queja, al final
);
