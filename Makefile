CXX = g++
CXXFLAGS = -Iimgui -Ibackends -Wall -std=c++17
LIBS = -lglfw -lGL -ldl -pthread

SRC = src/main.cpp \
      imgui/imgui.cpp imgui/imgui_draw.cpp imgui/imgui_tables.cpp imgui/imgui_widgets.cpp \
      backends/imgui_impl_glfw.cpp backends/imgui_impl_opengl3.cpp

TARGET = obj/kanaquiz

all:
	$(CXX) $(SRC) $(CXXFLAGS) $(LIBS) -o $(TARGET)

clean:
	rm -f $(TARGET)