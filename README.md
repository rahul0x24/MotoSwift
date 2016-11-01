# MotoSwift. Managed Objects to Swift.
Converts Core Data model to Swift.

## Installation
1. Install MotoSwift by downloading MotoSwift.pkg from the [latest GitHub release](https://github.com/Igor-Palaguta/MotoSwift/releases/latest) and running it.

2. From sources.

Clone or download project.

Run `make install`

If you need all components in one folder run `make bundle`. Now you can copy whole ```motoswift``` folder, and run ```motoswift/bin/motoswift``` from any place

## Usage

* **motoswift human [OPTIONS] MODEL_PATH** - generate human code for your model. Does not write to file, if file already exists

  Options:
    * --template - Path to entity template.
    * --file-mask - The file name mask for entity file, e.g: "{{class}}.swift"
    * --output - The output directory


* **motoswift machine [OPTIONS] MODEL_PATH** - generate machine code for your model. Overwrites file every time

  Options:
    * --template - Path to entity template.
    * --file-mask - The file name mask for entity file, e.g: "{{class}}+Properties.swift"
    * --output - The output directory


* **motoswift model [OPTIONS] MODEL_PATH** - generate code for your model

  Options:
    * --output - Output file path.
    * --template - Path to model template.


Example:

1. *XCode* style

`motoswift human --template ./Templates/class.stencil --output ./SampleOutput/XCode --file-mask "{{class}}+CoreDataClass.swift" ./Tests/MotoSwiftFrameworkTests/Resources/TypesModel.xcdatamodeld`

`motoswift machine --template ./Templates/properties.stencil --output ./SampleOutput/XCode --file-mask "{{class}}+CoreDataProperties.swift" ./Tests/MotoSwiftFrameworkTests/Resources/TypesModel.xcdatamodeld`

[SampleOutput/XCode](https://github.com/Igor-Palaguta/MotoSwift/tree/master/SampleOutput/XCode)

2. *Mogenerator* style

`motoswift human --template ./Templates/human.stencil --output ./SampleOutput/Human --file-mask "{{class}}.swift" ./Tests/MotoSwiftFrameworkTests/Resources/TypesModel.xcdatamodeld`

`motoswift machine --template ./Templates/machine.stencil --output ./SampleOutput/Machine --file-mask "_{{class}}.swift" ./Tests/MotoSwiftFrameworkTests/Resources/TypesModel.xcdatamodeld`

[SampleOutput/Human](https://github.com/Igor-Palaguta/MotoSwift/tree/master/SampleOutput/Human)

[SampleOutput/Machine](https://github.com/Igor-Palaguta/MotoSwift/tree/master/SampleOutput/Machine)

3. entity/attribute/relationship/fetched property names

`motoswift model --template ./Templates/model.stencil --output ./SampleOutput/Model/Model.swift ./Tests/MotoSwiftFrameworkTests/Resources/TypesModel.xcdatamodeld`

[SampleOutput/Model/Model.swift](https://github.com/Igor-Palaguta/MotoSwift/tree/master/SampleOutput/Model/Model.swift)

## Additional documentation
MotoSwift uses [Stencil](https://github.com/kylef/Stencil) as template language
