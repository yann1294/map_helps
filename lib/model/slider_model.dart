class SliderModel{
  String imageAssetPath;
  String title;
  String description;

  SliderModel({this.imageAssetPath,this.description,this.title});

  void setImageAssetPath(String imageAssetPath){
    this.imageAssetPath = imageAssetPath;
  }

  void setTitle(String title){
    this.title = title;
  }

  void setDescription(String description){
    this.description = description;
  }


  String getImageAssetPath() => this.imageAssetPath;
  String getTitle() => this.title;
  String getDescription() => this.description;
}



// Introslide data list

List<SliderModel> getSlidesList(){
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDescription("It starts with your location.Find Emergency care center nearby you. ");
  sliderModel.setTitle("Location");
  sliderModel.setImageAssetPath("assets/destination.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDescription("Find a doctor and a patient in your area for your consultation");
  sliderModel.setTitle("Patient");
  sliderModel.setImageAssetPath("assets/patient.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDescription("Find specialized doctors and nurses from the finest medical establishments right from the area where you are ,");
  sliderModel.setTitle("Specialist");
  sliderModel.setImageAssetPath("assets/specialist.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //4
  sliderModel.setDescription("In terms of social interaction, take a step back.Have easy access to some of the finest of the medical institution");
  sliderModel.setTitle("Collab");
  sliderModel.setImageAssetPath("assets/collab.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();



  return slides;
}