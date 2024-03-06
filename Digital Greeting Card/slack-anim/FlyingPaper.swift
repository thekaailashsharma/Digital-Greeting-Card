import SwiftUI

struct Paper: Identifiable {
    let id = UUID()
    let content: String
}

struct PaperFlyingView: View {
    @State private var papers: [Paper] = [
        Paper(content: "Paper 1"),
        Paper(content: "Paper 2"),
        Paper(content: "Paper 3"),
        Paper(content: "Paper 4"),
        Paper(content: "Paper 5")
    ]
    
    var body: some View {
        ZStack {
            PaperView()
            
            ForEach(papers) { paper in
                FlyingPaperView(paper: paper)
                    .gesture(
                        DragGesture()
                            .onEnded { value in
                                self.throwPaper(paper)
                            }
                    )
            }
        }
    }
    
    func throwPaper(_ paper: Paper) {
        withAnimation {
            papers.removeAll(where: { $0.id == paper.id })
        }
    }
}

struct PaperView: View {
    var body: some View {
        VStack {
            Text("Calendar")
                .font(.largeTitle)
                .padding()
            
            // Your calendar implementation goes here
        }
    }
}

struct FlyingPaperView: View {
    let paper: Paper
    
    var body: some View {
        Text(paper.content)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .background(Color.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(x: CGFloat.random(in: -100...100), y: CGFloat.random(in: -100...100))
            .animation(.easeInOut)
    }
}

struct PaperView_Previews: PreviewProvider {
    static var previews: some View {
        PaperFlyingView()
    }
}
