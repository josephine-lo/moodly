  //
//  ContentView.swift
//  Meditation
//
//  Created by Eva Chen on 1/18/20.
//  Copyright © 2020 Eva Chen. All rights reserved.
//

import SwiftUI
import WebKit
struct globalvars {
    static var video = 0
    static var video2 = 0
}



struct VideoView: View {
      
    @State private var selectedSegment = 0
    @State private var videos = ["www.youtube.com/watch?v=rNeBef04SNU", "www.youtube.com/watch?v=fgkqLWg2B9o", "www.youtube.com/watch?v=HSXcZmUN0OQ", "www.youtube.com/watch?v=jE560Zu0hZU", "www.youtube.com/watch?v=nmFUDkj1Aq0", "www.youtube.com/watch?v=L5tkqaKiryE", "www.youtube.com/watch?v=qun9Hyj0hvA", "www.youtube.com/watch?v=u4gZgnCy5ew", "www.youtube.com/watch?v=g-DTB0xdj3E", "www.youtube.com/watch?v=A_u50l2t6-U", "www.youtube.com/watch?v=0zuZZUOtQxA", "www.youtube.com/watch?v=VttsLIfV2pM", "www.youtube.com/watch?v=nmFUDkj1Aq0", "www.youtube.com/watch?v=L5tkqaKiryE", "www.youtube.com/watch?v=qun9Hyj0hvA", "www.youtube.com/watch?v=u4gZgnCy5ew", "www.youtube.com/watch?v=RgF78ou2B7g", "www.youtube.com/watch?v=js883juQnVE", "www.youtube.com/watch?v=OS_iqfGjL78", "www.youtube.com/watch?v=HpHKf4tlvFw", "www.youtube.com/watch?v=KOc5Xa0hLJw", "www.youtube.com/watch?v=ZToicYcHIOU", "www.youtube.com/watch?v=_iGWdUTifIQ", "www.youtube.com/watch?v=gZmV2IyHEb4", "www.youtube.com/watch?v=inpok4MKVLM", "www.youtube.com/watch?v=6p_yaNFSYao", "www.youtube.com/watch?v=jobVHhlMmRo", "www.youtube.com/watch?v=EVLVC7jIB5M", "www.youtube.com/watch?v=6AzybnjMaAQ", "www.youtube.com/watch?v=vZNUswv5Fng", "www.youtube.com/watch?v=hkyKHk7s13s", "www.youtube.com/watch?v=Zljg2ptExHc", "www.youtube.com/watch?v=L1QOh-n-eus", "www.youtube.com/watch?v=s1zYw84eFkY", "www.youtube.com/watch?v=CdbzDMSGsyg", "www.youtube.com/watch?v=rdW2pM0DyYQ"]
      
      
    var body: some View {
        NavigationView {
            VStack() {
                WebView(request: URLRequest(url: URL(string: "https://\(videos[globalvars.video2])")!))
            }.navigationBarTitle(Text("Guided Meditation"))
        }
    }
}

struct MoodView: View {
      
    @State private var videoSheet = false
    @State private var moods = [
      """
      • Exercise
      • Distract yourself
      • Listen to music and dance
      • Practice mindfulness
      """,
      """
      • Engage in your curiosities
      • Hit up an old friend
      • Find a new hobby
      • Take a walk to think
      """,
      """
      • Find a new hobby
      • Treat yourself
      • Talk with a friend
      • Listen to your favorite music
      """,
      """
      • Talk to those close to you
      • Limit alcohol and caffeine
      • Take a nap
      • Go for a walk
      """,
      """
      • Practice mindfulness
      • Learn a new skill
      • Reflect on your day
      • Reach out to old friends
      """,
      """
      • Count backwards from 100
      • Do some Tai Chi or yoga
      • Take deep breaths
      • Retrace your day
      """,
      """
      • Go for a run
      • Avoid sugar and caffeine
      • Find a new active hobby
      • Learn a new skill
      """,
      """
      • Take deep breaths
      • Confide in those close to you
      • Take a step back to think
      • Avoid binge or stress eating
      """,
      """
      • Gather your thoughts
      • Be patient
      • Keep your priorities straight
      • Talk it out with a trusted person
      """]
      var body: some View {
          NavigationView {
            ZStack(){
                Color(red: 0.93, green: 0.91, blue: 0.67)
                .edgesIgnoringSafeArea(.all)
                VStack() {
                    Text("You should try to...").padding(5).font(.custom("AvenirLTStd-Medium", size: 35))
                    Text(moods[globalvars.video]).lineSpacing(5.5).font(.custom("acaslonpro-regular", size: 24)).frame(width: 350, height: 170, alignment: .center)
                        .background(Color.white)
                    .cornerRadius(25)
                    Text("\n\nI can spare...\n").padding(5).font(.custom("AvenirLTStd-Medium", size: 30))
                  
                  HStack(){
                    Button(action:  {
                       globalvars.video2 = (4 * globalvars.video) + 0;
                       self.videoSheet.toggle()
                   })  {
                      
                       Text("5 Minutes").padding(7).foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.4)).font(.custom("AvenirLTStd-Medium", size: 20))
                       .overlay(
                           RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(red: 0.06, green: 0.06, blue: 0.4), lineWidth: 2.5)
                       )
                   }
                      Text("   ")
                     Button(action:  {
                        globalvars.video2 = (4 * globalvars.video) + 1;
                        self.videoSheet.toggle()
                    }) {
                      
                        Text("10 Minutes").padding(7).foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.4)).font(.custom("AvenirLTStd-Medium", size: 20))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(red: 0.06, green: 0.06, blue: 0.4), lineWidth: 2.5)
                        )
                    }
                  }
                  Text("\n")
                  
                  HStack(){
                  
                     Button(action:  {
                        globalvars.video2 = (4 * globalvars.video) + 2;
                        self.videoSheet.toggle()
                    }){
                        Text("20 Minutes").padding(7).foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.4)).font(.custom("AvenirLTStd-Medium", size: 20))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(red: 0.06, green: 0.06, blue: 0.4), lineWidth: 2.5)
                        )
                    }
                      Text("   ")
                     Button(action:  {
                        globalvars.video2 = (4 * globalvars.video) + 3;
                        self.videoSheet.toggle()
                    }){
                        Text("30 Minutes").padding(7).foregroundColor(Color(red: 0.06, green: 0.06, blue: 0.4)).font(.custom("AvenirLTStd-Medium", size: 20))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(red: 0.06, green: 0.06, blue: 0.4), lineWidth: 2.5)
                        )
                    }
                      
                  }
                    .sheet(isPresented: $videoSheet) {
                        VideoView()
                    }
                    Spacer()
                }
            }
          }
      }
  }

  struct SecondView: View {
      
      @State private var moodSheet = false
      
      var body: some View {
          NavigationView {
            ZStack() {
                Color(red: 0.06, green: 0.06, blue: 0.4)
                    .edgesIgnoringSafeArea(.all)
              VStack() {
                
                
                Text("Today I'm feeling...\n\n").padding(5).foregroundColor(Color.white).font(.custom("AvenirLTStd-Medium", size: 30))
                
                HStack() {
                    
                    Button(action:  {
                        globalvars.video = 0
                        self.moodSheet.toggle()
                    }){
                    Text("Angry").padding(5).foregroundColor(Color.white).font(.custom("AvenirLTStd-Medium", size: 20))
                        
                        .frame(width: 120, height: 50, alignment: .center)
                        .background(Color(red: 1, green: 0, blue: 0))
                        .cornerRadius(100)
                    }

                    .sheet(isPresented: $moodSheet) {
                        MoodView()
                    }
                            
                            
                    Button(action:  {
                        globalvars.video = 1
                        self.moodSheet.toggle()
                    }){
                    Text("Anxious").padding(5).foregroundColor(Color.white).font(.custom("AvenirLTStd-Medium", size: 20))
                        .frame(width: 120, height: 50, alignment: .center)
                            .background(Color(red: 1, green: 0.3, blue: 0))
                        .cornerRadius(100)
                    }
                      .sheet(isPresented: $moodSheet) {
                          MoodView()
                      }
                    
                    
                      Button(action:  {
                          globalvars.video = 2
                          self.moodSheet.toggle()
                      }){
                        Text("Confused").padding(5).foregroundColor(Color.white).font(.custom("AvenirLTStd-Medium", size: 20))
                          .frame(width: 120, height: 50, alignment: .center)
                          .background(Color(red: 1, green: 0.8, blue: 0))
                          .cornerRadius(100)
                      }
                      .sheet(isPresented: $moodSheet) {
                          MoodView()
                      }
                }
                //Spacer.frame(width: 10)
                Text("\n")
                HStack() {
                      Button(action:  {
                          globalvars.video = 3
                          self.moodSheet.toggle()
                      }){
                        Text("Content").padding(5).foregroundColor(Color.white).font(.custom("AvenirLTStd-Medium", size: 20))
                          .frame(width: 120, height: 50, alignment: .center)
                          .background(Color(red: 0.1, green: 0.8, blue: 0.4))
                          .cornerRadius(100)
                      }
                      .sheet(isPresented: $moodSheet) {
                          MoodView()
                      }
                    
                
                  Button(action:  {
                      globalvars.video = 4
                      self.moodSheet.toggle()
                  }){
                    Text("Depressed").padding(5).foregroundColor(Color.white).font(.custom("AvenirLTStd-Medium", size: 20))
                      .frame(width: 120, height: 50, alignment: .center)
                        .background(Color(red: 0.4, green: 0.75, blue: 1))
                      .cornerRadius(100)
                  }
                  .sheet(isPresented: $moodSheet) {
                      MoodView()
                  }
                  Button(action:  {
                      globalvars.video = 5
                      self.moodSheet.toggle()
                  }){
                    Text("Energetic").padding(5).foregroundColor(Color.white).font(.custom("AvenirLTStd-Medium", size: 20))
                      .frame(width: 120, height: 50, alignment: .center)
                        .background(Color(red: 0.7, green: 0.55, blue: 0.9))
                      .cornerRadius(100)
                  }
                  .sheet(isPresented: $moodSheet) {
                      MoodView()
                  }
                }
                
                Text("\n")
                HStack(){
                    
               // Text("\n")
                  Button(action:  {
                      globalvars.video = 6
                      self.moodSheet.toggle()
                  }){
                Text("Neutral").padding(5).foregroundColor(Color.white).font(.custom("AvenirLTStd-Medium", size: 20))
                      .frame(width: 120, height: 50, alignment: .center)
                      .background(Color(red: 0.25, green: 0.2, blue: 0.6))
                      .cornerRadius(100)
                  }
                  .sheet(isPresented: $moodSheet) {
                      MoodView()
                  }
                
                Button(action:  {
                        globalvars.video = 7
                        self.moodSheet.toggle()
                    }){
                    Text("Restless").padding(5).foregroundColor(Color.white).font(.custom("AvenirLTStd-Medium", size: 20))
                        .frame(width: 120, height: 50, alignment: .center)
                        .background(Color(red: 0.2, green: 0.2, blue: 0.2))
                        .cornerRadius(100)
                    }
                  .sheet(isPresented: $moodSheet) {
                      MoodView()
                  }
                
                  Button(action:  {
                      globalvars.video = 8
                      self.moodSheet.toggle()
                  }){
                    Text("Stressed").padding(5).foregroundColor(Color.white).font(.custom("AvenirLTStd-Medium", size: 20))
                    .frame(width: 120, height: 50, alignment: .center)
                    .background(Color(red: 0.8, green: 0.5, blue: 0.76))
                    .cornerRadius(100)
                  }
                  .sheet(isPresented: $moodSheet) {
                      MoodView()
                  }
                }
                
              }
            }
          }
      }
  }



  
struct ContentView: View {
    @State private var secondSheet = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 0.01, green: 0.6, blue: 0.25)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack{
                        Text("Josephine Lo").padding().font(.custom("AvenirLTStd-Medium", size: 50))
                        .frame(width: 350, height: 150, alignment: .center)
                        .background(Color(red: 0.93, green: 0.91, blue: 0.67))
                        .cornerRadius(20)
                    }
                    Text("\n\n\nMost Recent Entry: January 18th").font(.custom("AvenirLTStd-Medium", size: 20))
                    Text("Yesterday, you felt anxious because you had an important presentation coming up.\n\n").padding().multilineTextAlignment(.center).lineSpacing(10).font(.custom("acaslonpro-semibold", size: 25))
                    
                    Button(action:  {
                        self.secondSheet.toggle()
                    }){
                        Text("Get Started").padding(10).foregroundColor(Color(red: 0.93, green: 0.91, blue: 0.67)).font(.custom("AvenirLTStd-Medium", size: 20))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke((Color(red: 0.93, green: 0.91, blue: 0.67)), lineWidth: 5)
                        )
                        
                    }
                    .sheet(isPresented: $secondSheet) {
                        SecondView()
                    }
                }.navigationBarTitle("Welcome back,")
                
            }
        }
    }
  }
  
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
  
struct WebView: UIViewRepresentable{
    let request: URLRequest
      
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
      
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
      
}

