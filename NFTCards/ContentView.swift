//
//  ContentView.swift
//  NFTCards
//
//  Created by Ivan 🦄 Shipilov on 10/02/2022.
//

import SwiftUI

struct ContentView: View {

    
    @State var activeTabFromPickerColor = #colorLiteral(red: 0.1921568627, green: 0.537254902, blue: 1, alpha: 1)
    
    @Binding var NFTImage: String

    let imagesForCards = [
    "nftPic1", "nftPic2", "nftPic3", "nftPic4"
    ]
    
    
    
    var body: some View {
        

        
            VStack{
                HStack {
                    Image("menu")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 24, height: 24, alignment: .center)
                    Spacer()
                    Image("search")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 24, height: 24, alignment: .center)
                        .padding(.trailing, 10)
                    Image("message")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 28, height: 28, alignment: .center)

                }.padding(24)
                

                
                HStack {
                    Text("Checkout the best NFT in the world!")
                        .font(.system(size: 32, weight: .heavy, design: .default))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .frame(width: 320, alignment: .leading)
                    Spacer()
                }
                .padding(.leading, 24)

                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                            Text("Popular")
                                .padding(.leading, 24)
                                .padding(.trailing, 24)
                                .frame(minWidth: 90)
                                .frame(height: 48)
                                .background(Color(activeTabFromPickerColor))
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                                .shadow(color: Color(.red).opacity(0.8), radius: 240, x: 12, y: 4)


                        Text("Art")
                            .frame(minWidth: 90)

                        Text("Celebrities")
                            .frame(minWidth: 90)
                            .padding(.leading, 8)
                            .padding(.trailing, 8)
                        Text("Abstract")
                            .frame(minWidth: 90)
                            .padding(.leading, 8)
                            .padding(.trailing, 8)
                        Text("Avatars")
                            .frame(minWidth: 90)
                            .padding(.leading, 8)
                            .padding(.trailing, 8)

                        Text("Gaming")
                            .frame(minWidth: 90)
                            .padding(.leading, 8)
                            .padding(.trailing, 8)
                        Text("Sport")
                            .frame(minWidth: 90)
                            .padding(.leading, 8)
                            .padding(.trailing, 8)
                    }
                    .foregroundColor(Color(.white))
                }.offset(x: 24)
                

                
                GeometryReader { geo in

                            ZStack (alignment: .center){
                                

                                
                                NFTCardView(activeTabFromPickerColor: $activeTabFromPickerColor, NFTImage: "nftPic4")
                                    .offset(y: 48)
                                    .scaleEffect(0.93)
                                
                                NFTCardView(activeTabFromPickerColor: $activeTabFromPickerColor, NFTImage: "nftPic2")
                                    .offset(y: 24)
                                    .scaleEffect(0.97)
                                
                                NFTCardView(activeTabFromPickerColor: $activeTabFromPickerColor, NFTImage: "nftPic1")
                        
                            }.padding()
                }
                

                
                
            Spacer()
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.07003092197, green: 0.07845478928, blue: 0.09608585859, alpha: 1)), Color(#colorLiteral(red: 0.1529411765, green: 0.1725490196, blue: 0.1882352941, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(NFTImage: .constant("nftPic3"))
    }
}

struct NFTCardView: View {
    
    
//    let dragGesture = DragGesture()
//        .updating($translation) { (value, state, ) in
//            state = value.translation
//
//        }

    
    
    @Binding var activeTabFromPickerColor: UIColor
    
    @State var NFTImage: String
    
    @State var viewState = CGSize.zero
    
//    @Binding var topCard: Bool
    
//    @GestureState var translation: CGSize = .zero

    
    var body: some View {
        
        
        GeometryReader { geo in
            
            ZStack (alignment: .center){
                
                Image(NFTImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width - 40)
                
                
                
                VStack (alignment: .leading){
                    
                    HStack{
                        Image("live")
                            .padding(.leading, 4)
                        Text("Live")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.top, 8)
                            .padding(.bottom, 8)
                            .padding(.trailing, 12)
                    }
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    .padding()
                    
                    
                    Spacer()
                    
                    ZStack {
                        
                        Rectangle()
                            .fill(Color.black.opacity(0.2))
                            .frame(height: 120)
                            .background(.ultraThinMaterial)
                        
                        
                        
                        
                        VStack{
                            HStack {
                                
                                Text("Lorum Ipsum Corsicus")
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.white)
                                    .padding(.leading, 16)
                                    .multilineTextAlignment(.leading)
                                    .transformEffect(.identity)
                                Spacer()
                            }
                            HStack{
                                HStack{
                                    Image("ETH")
                                    VStack (alignment: .leading){
                                        Text("2.890 ETH")
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.leading)
                                        Text("Top Bit")
                                            .font(.caption)
                                            .opacity(0.6)
                                        
                                    }
                                    
                                    .foregroundColor(Color(.white))
                                    
                                    Spacer()
                                    
                                    Button(action: {}) {
                                        Text("Place A Bid")
                                            .font(.system(size: 14, weight: .bold))
                                            .foregroundColor(.white)
                                            .padding(16)
                                    }
                                    .background(Color(activeTabFromPickerColor))
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    
                                }
                            }
                            .padding(.bottom, 16)
                            .padding(.leading, 16)
                            .padding(.trailing, 16)
                        }
                        .frame(height: 120, alignment: .bottom)
                    }
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//            .scaleEffect(topCard ? 0.90 : 1)
            .offset(x: viewState.width, y: viewState.height)
            .gesture(
                DragGesture().onChanged { value in
                   viewState =  value.translation
                }
                    .onEnded{ value in
                        viewState = .zero
                    }
            )
            .animation(.spring(response: 0.4, dampingFraction: 0.6))
            .frame(width: geo.size.width, height: 456)
            .padding(.top, 2)
        }
    }
}
