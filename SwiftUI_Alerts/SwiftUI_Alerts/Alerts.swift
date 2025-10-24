//
//  Alerts.swift
//  SwiftUI_Alerts
//
//  Created by Ambreen Bano on 02/10/25.
//

import SwiftUI

struct Alerts: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        
        Button {
            showAlert.toggle()
        } label: {
            Text("Tap to Show Alert")
        }
        
        //Alert can have maximum 2 buttons - Depricated
        //.cancel/.default are in blue color
        //.destructive are red in color
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Alert Title"),
                message: Text("Alert Mesage"),
                primaryButton: .cancel(Text("Cancel"), action: {
                    print("Cancel clicked")
                }),
                secondaryButton: .destructive(Text("Report"), action: {
                    print("Report clicked")
                })
            )
        }
    }
}


enum AlertType {
    case success
    case failure
}


struct MulyipleAlerts: View {
    
    @State var showAlert: Bool = false
    @State var alertType: AlertType = .success
    @State var bgColor: Color = .purple
    
    var alertTitle = ""
    var alertMessage = ""
    
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button {
                    alertType = .success
                    showAlert.toggle()
                } label: {
                    Text("Success Alert")
                        .bold()
                        .foregroundColor(.white)
                }
                
                Button {
                    alertType = .failure
                    showAlert.toggle()
                } label: {
                    Text("Failure Alert")
                        .bold()
                        .foregroundColor(.white)
                }
                
                //Alert can have maximum 2 buttons (Use Action sheet if more than 2 buttons required)
                //.cancel/.default are in blue color
                //.destructive are red in color
                .alert(isPresented: $showAlert) {
                    getAlert()
                }
            }
        }
    }
    
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .success:
            return Alert(
                title: Text("Alert Success Title"),
                message: Text("Alert Success Mesage"),
                primaryButton: .cancel(Text("Cancel"), action: {
                    print("Cancel clicked")
                }),
                secondaryButton: .default(Text("Ok"), action: {
                    bgColor = .green
                    print("Ok clicked")
                })
            )
        case .failure:
            return Alert(
                title: Text("Alert Failure Title"),
                message: Text("Alert Failure Mesage"),
                primaryButton: .cancel(Text("Cancel"), action: {
                    print("Cancel clicked")
                }),
                secondaryButton: .destructive(Text("Report"), action: {
                    bgColor = .red
                    print("Report clicked")
                })
            )
        }
    }
}



struct AlertsNewWay: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        Button {
            showAlert.toggle()
        } label: {
            Text("Tap to Show Alert")
        }
        
        //New way to use Alerts (Above ones are depricated)
        //Alert can have ANY NUMBER of BUTTONS - New Way
        .alert("Alert Title", isPresented: $showAlert) {
            Button("Ok") { }
            Button("Cancel", role: .cancel) { }
            Button("Report", role: .destructive) { }
            Button("Delete", role: .destructive) { }
        } message: {
            Text("Alert Message with New Way")
        }
    }
}


#Preview {
    //Alerts()
    //MulyipleAlerts()
    AlertsNewWay()
}
