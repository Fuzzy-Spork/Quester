import 'package:quester/models/completion_report/completion_report.dart';

import 'mission.dart';

List<Mission> missions = [
  Mission(
    id: 'plantTree',
    category: Category.Active,
    name: 'Plant a Tree',
    desc:
        'If each of us plants a tree, there will be enough trees to keep Earth in shape for years to come! Show Earth some love by giving new life.',
    xp: 50,
    status: Status.Inactive,
    completionReport: CompletionReport(),
  ),
  Mission(
    id: 'startGarden',
    category: Category.Active,
    name: 'Start a garden!',
    desc:
        'Gardens needn\'t be huge, start small, get a potted plant, or a kitchen garden. Whatever works for you! Start Somewhere!',
    xp: 40,
    status: Status.Inactive,
    completionReport: CompletionReport(),
  ),
  Mission(
    id: 'waterPlantsRepeatable',
    category: Category.Repeatable,
    name: 'Water your plants',
    desc: 'Have a garden? A potted plant? Go water\'em all!',
    xp: 10,
    status: Status.Inactive,
    completionReport: CompletionReport(),
  ),
  Mission(
    id: 'donate',
    category: Category.Repeatable,
    name: 'Donate to a charity!',
    desc: 'Every bit matter! Help where tou can!',
    xp: 100,
    status: Status.Inactive,
    completionReport: CompletionReport(),
  ),
  Mission(
    id: 'adopt',
    category: Category.Repeatable,
    name: 'Adopt from a shelter!',
    desc: 'Give someone a new home!',
    xp: 100,
    status: Status.Inactive,
    completionReport: CompletionReport(),
  ),
  Mission(
    category: Category.Repeatable,
    name: 'Walk 10,000 steps!',
    desc: 'It\'s never not a good time to do some good\'ol walking',
    xp: 50,
    status: Status.Inactive,
    completionReport: CompletionReport(),
  ),
   Mission(
     category: Category.Repeatable,
     name: 'Don\'t waste waste',
     desc: 'Is all waste waste? Is it all the same type? Sort it out and maybe you\'ll find that somethings can be reused, recycled or even just disposed of in a eco-friendly way!',
     xp: 50,
     status: Status.Inactive,completionReport: CompletionReport(),
   ),
  // Mission(
  //   category: Category.Repeatable,
  //   name: '',
  //   desc: '',
  //   xp: 50,
  //   status: Status.Inactive,completionReport: CompletionReport(),
  // ),
];
