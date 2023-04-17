import 'package:flutter/material.dart';
import 'package:waya/screens/homepage.dart';


class ReportForm extends StatefulWidget {
  const ReportForm({Key? key}) : super(key: key);

  @override
  State<ReportForm> createState() =>
      _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'REPORT',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentStep = 0;
  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep = currentStep + 1; //currentStep+=1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1; //currentStep-=1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: details.onStepContinue,
            child: const Text('Next'),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: details.onStepCancel,
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // set background color to white
        centerTitle: true, // center the title
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            const Text(
              'Incident Report',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
      body: Stepper(
        elevation: 0, //Horizontal Impact
        // margin: const EdgeInsets.all(20), //vertical impact
        controlsBuilder: controlBuilders,
        type: StepperType.vertical,
        physics: const ScrollPhysics(),
        onStepTapped: onStepTapped,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        currentStep: currentStep, //0, 1, 2
        steps: [
          Step(
            title: const Text('Step 1'),
            content: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Title of incident',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Type of incident',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a type of incident';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Date and time of incident',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Date and Time';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Location of incident',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a Location';
                    }
                    return null;
                  },
                ),

                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Description of incident',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Additional information (optional)',
                  ),
                ),
              ],
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 0 ? StepState.editing : StepState.disabled,
          ),

          Step(
            title: Text('Step 2'),
            content: Column(
              children: [
                Text('Upload any evidence you have of the incident.'),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    //TODO: Implement file upload logic
                  },
                  child: Text('Upload File'),
                ),
              ],
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 1 ? StepState.editing : StepState.disabled,
          ),
          Step(
            title: Text('Step 3'),
            content: Column(
              children: [
                Text('Thank you for your report. Your report has been submitted.'),
              ],
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
        ],
      ),
    );
  }
}
