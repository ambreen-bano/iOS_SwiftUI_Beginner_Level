//
//  Grids.swift
//  SwiftUI_Grid
//
//  Created by Ambreen Bano on 06/10/25.
//

import SwiftUI

struct Grids: View {
    var body: some View {
        
        Spacer()
        Grid {
            //bydefault all cells are arrange in column
            gridCell()
            gridCell()
            gridCell()
        }
       
        
        
        
        Spacer()
        Grid {
            gridCell()
            GridRow {
                // GridRow - all cells are arrange in row
                gridCell()
                gridCell()
                gridCell()
            }
            gridCell()
            gridCell()
        }
        
        
        
        
        Spacer()
        Grid {
            GridRow {
                gridCell()
                gridCell()
            }
            
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
        }
        
        
        Spacer()
        Grid {
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
            
            GridRow {
                gridCell()
                gridCell()
                //This is empty space, there is no view in grid
            }
            
            GridRow {
                gridCell()
                gridCell()
                gridCellLargeWidth()
            }
        }
        
        
        
        
        Spacer()
        //Bydefault cells are center aligned
        //Grid size == maximum required width, ROW/Column size
        Grid (alignment: .trailing) { // we can align cells trailing
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
            
            GridRow {
                gridCell()
                gridCell()
                //This is empty space, there is no view in grid
            }
            
            GridRow {
                gridCell()
                gridCell()
                gridCellLargeWidth()
            }
        }
        
        
        
        Spacer()
        
    }
}



struct GridsWithCustomization: View {
    var body: some View {
        
        Spacer()
        //Bydefault cells are center aligned
        //Grid size == maximum required width, ROW/Column size
        Grid (alignment: .trailing) { // we can align All cells trailing
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
            
            GridRow {
                gridCell()
                gridCellLargeHeight().gridColumnAlignment(.center) //ONLY second column itmes are center aligned
                gridCell()
            }
            
            GridRow {
                gridCell()
                gridCell()
                gridCellLargeWidth()
            }
        }
        
        
        
        
        Spacer()
        //Bydefault cells are center aligned
        //Grid size == maximum required width, ROW/Column size
        Grid (alignment: .trailing) { // we can align cells trailing
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
            
            GridRow {
                gridCell()
                gridCell()
            }
            
            GridRow {
                gridCell()
                gridCell()
                gridCellLargeWidth()
            }
        }
        
        
        
        
        
        Spacer()
        //Bydefault cells are center aligned
        //Grid size == maximum required width, ROW/Column size
        Grid (alignment: .trailing) { // we can align cells trailing
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
            
            GridRow {
                gridCell()
                gridCell()
                    .gridCellColumns(2) //This cell is taking 2 column space, alignment is trailing so it shifted towards trailing
                    .gridCellAnchor(.center) //this cell will align as centered
            }
            
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
        }
        
        
        
        
        Spacer()
        Grid (alignment: .center) {
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
            
            GridRow {
                gridCell()
                
                //If we want some blank space in the Grid for some arrangement
                Color.blue
                    //.frame(width: 40, height: 40)
                    .gridCellUnsizedAxes([.horizontal, .vertical])
                
                gridCell()
            }
            
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
        }
        
        
        Spacer()
        
    }
}




struct GridsWithDivider: View {
    var body: some View {
        
        Spacer()
        //Grid size == maximum required width, ROW/Column size
        Grid (alignment: .center) {
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
            
            GridRow {
                gridCell()
                gridCell()
                gridCellLargeHeight()
            }
            
            GridRow {
                gridCell()
                gridCell()
                gridCellLargeWidth()
            }
        }
        
        
        
        
        Spacer()
        //Grid size == maximum required width, ROW/Column size
        Grid (alignment: .center) {
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
            
            Divider() //Bydefault divider extends the grid till max available width
            
            GridRow {
                gridCell()
                gridCell()
                gridCellLargeHeight()
            }
            
            Divider()
            
            GridRow {
                gridCell()
                gridCell()
                gridCellLargeWidth()
            }
        }
        
        
        
        
        Spacer()
        //Grid size == maximum required width, ROW/Column size
        Grid (alignment: .center) {
            GridRow {
                gridCell()
                gridCell()
                gridCell()
            }
            
            Divider() //gridCellUnsizedAxes stops the divider to extends the grid
                .gridCellUnsizedAxes(.horizontal)
            
            GridRow {
                gridCell()
                gridCell()
                gridCellLargeHeight()
            }
            
            Divider() //gridCellUnsizedAxes stops the divider to extends the grid
                .gridCellUnsizedAxes(.horizontal)
            
            GridRow {
                gridCell()
                gridCell()
                gridCellLargeWidth()
            }
        }
        
        Spacer()
    }
}



struct gridCell: View {
    var body: some View {
        Text("Cell")
            .frame(width: 40, height: 40)
            .background(Color.green)
    }
}

struct gridCellLargeWidth: View {
    var body: some View {
        Text("CellLWidth")
            .frame(width: 80, height: 40)
            .background(Color.green)
    }
}


struct gridCellLargeHeight: View {
    var body: some View {
        Text("CellLHeight")
            .frame(width: 80, height: 80)
            .background(Color.green)
    }
}

#Preview {
    //Grids()
    GridsWithCustomization()
    //GridsWithDivider()
}
