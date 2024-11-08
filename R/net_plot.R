# Plotting a co-abundance network
#'
#' This function creates a network plot. This function also provides options for customizing network visualizations, allowing users to adjust node sizes, edge weights, and color schemes to highlight specific patterns or relationships of interest.
#' @usage net_plot (g, type)
#' @param g An igraph object preprocessed by v_colored or ctr_g.
#' @param type You can choose between "phylo" or "centrality".
#' @return An igraph object.
#' @export
#'
#' @examples
#'
#' data ("ctr_g_dstool")
#' net_plot (ctr_g_dstool, type = "centrality")
#'

net_plot<-function(g, type){
  # Taxonomic classification
  if(type == "phylo"){
    return(plot(g, vertex.label.color="black",
                vertex.color = vertex.attributes(g)$color, vertex.label.cex=.5,
                vertex.label.dist=1,layout=layout_with_kk, vertex.size = 5))
  } else
  # Centrality
  if(type == "centrality"){
    return(plot(g, vertex.label.color="black",
                vertex.color = vertex.attributes(g)$hl, vertex.label.cex=.5,
                vertex.label.dist=1,layout=layout_with_kk, vertex.size = 5))
  }
}

