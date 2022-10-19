mod_progressPage_ui <- function(id) {
    ns <- NS(id)
    tagList(
        fluidRow(
            class = "panel-body",
            column(
                width = 3,
                card_container_sortable(
                    sortable_id = ns("pendiente"),
                    title = "Pendiente",
                    height = "89vh",
                    task_card(),
                    task_card(),
                    task_card(),
                    task_card()
                )
            ), 
            column(
                width = 3,
                fluidRow(
                    column(
                        width = 12,
                        card_container_sortable(
                            sortable_id = ns("en_proceso"),
                            title = "En proceso",
                            height = "44vh",
                            task_card(),
                            task_card(),
                            task_card(),
                            task_card()
                        )
                    ),
                    column(
                        width = 12,
                        card_container_sortable(
                            sortable_id = ns("pausado"),
                            title = "Pausado",
                            height = "44vh",
                            task_card(),
                            task_card(),
                            task_card(),
                            task_card()
                        )
                    )
                )
            ), 
            column(
                width = 3,
                fluidRow(
                    column(
                        width = 12,
                        card_container_sortable(
                            sortable_id = ns("en_revision"),
                            title = "En revisión",
                            height = "44vh",
                            task_card(),
                            task_card(),
                            task_card(),
                            task_card()
                        )
                    ),
                    column(
                        width = 12,
                        card_container_sortable(
                            sortable_id = ns("observado"),
                            title = "Observado",
                            height = "44vh",
                            task_card(),
                            task_card(),
                            task_card(),
                            task_card()
                        )
                    )
                )
            ), 
            column(
                width = 3,
                card(
                    id = "sort4",
                    verbatimTextOutput(ns("debug"))
                )
            )
        )
    )
}

mod_progressPage_server <- function(id) {
    moduleServer(id, function(input, output, session) {
        ns <- session$ns
        
        output$debug <- renderPrint(list(
            # pendientes = input$pendiente_elements,
            # en_proceso = input$en_proceso_elements,
            # pausado = input$pausado_elements,
            # en_revision = input$en_revision_elements,
            # observado = input$observado_elements,
            # task_to_delete = input$task_card_to_delete
            input = input |> reactiveValuesToList()
        ))
    })
}
