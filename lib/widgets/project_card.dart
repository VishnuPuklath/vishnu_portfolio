import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Card(
          color: Colors.blue[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.build,
                    size: 18,
                  ),
                  Text('Project name'),
                  SizedBox()
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  'Project description ',
                ),
              ),
              const Spacer(),
              const Divider(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {},
                    child: const Text(
                      "View Project",
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
