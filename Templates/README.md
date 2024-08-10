# Basic Templates for Projects

- Git ignore
- FrameWork
- Projects
- Language Versions: Version Managers
- Project Requirements

## On Ubuntu:

**Templates Structure**

```bash
/home/tafara/
│
├── Templates
│   ├── config
│       └── .editorconfig
│       └── .nvmrc
│       └── .python-version
│       └── .ruby-version
│   ├── Django
│       └── layout.html
│   ├── Flask
│       └── base.html
│   └── gitignore
│       └── templates
            ├── 1C-Bitrix.gitignore
            ├── 1C.gitignore
            ├── Actionscript.gitignore
            ├── Ada.gitignore
            ├── Adobe.gitignore
            ├── AdvancedInstaller.gitignore
            ├── AdventureGameStudio.gitignore
            ├── A-Frame.gitignore
            ├── Agda.gitignore
            ├── AL.gitignore
            ├── AlteraQuartusII.gitignore
            ├── Altium.gitignore
            ├── Amplify.gitignore
            ├── Android.gitignore
            ├── Android.patch
            ├── Android+reports.patch
            ├── AndroidStudio.gitignore
            ├── AndroidStudio.patch
            ├── Angular.gitignore
            ├── Anjuta.gitignore
            ├── Ansible.gitignore
            ├── AnsibleTower.gitignore
            ├── ApacheCordova.gitignore
            ├── ApacheHadoop.gitignore
            ├── AppBuilder.gitignore
            ├── AppceleratorTitanium.gitignore
            ├── AppCode+all.gitignore -> JetBrains+all.gitignore
            ├── AppCode+all.patch -> JetBrains+all.patch
            ├── AppCode.gitignore -> JetBrains.gitignore
            ├── AppCode+iml.gitignore -> JetBrains+iml.gitignore
            ├── AppCode+iml.patch -> JetBrains+iml.patch
            ├── AppCode.patch -> JetBrains.patch
            ├── AppEngine.gitignore
            ├── AptanaStudio.gitignore -> Eclipse.gitignore
            ├── Arcanist.gitignore
            ├── Archive.gitignore
            ├── Archives.gitignore
            ├── ArchLinuxPackages.gitignore
            ├── asdf.gitignore
            ├── ASPNETCore.gitignore
            ├── Assembler.gitignore
            ├── Astro.gitignore
            ├── ATE.gitignore
            ├── AtmelStudio.gitignore
            ├── ATS.gitignore
            ├── Audio.gitignore
            ├── Autohotkey.gitignore
            ├── AutomationStudio.gitignore
            ├── Autotools.gitignore
            ├── Autotools.patch
            ├── Autotools+strict.gitignore -> Autotools.gitignore
            ├── Autotools+strict.patch
            ├── AWR.gitignore
            ├── AzureFunctions.gitignore
            ├── Azurite.gitignore
            ├── Backup.gitignore
            ├── Ballerina.gitignore
            ├── baserCMS.gitignore
            ├── Basic.gitignore
            ├── Batch.gitignore
            ├── Bazaar.gitignore
            ├── Bazel.gitignore
            ├── Bitrise.gitignore
            ├── Bitrix.gitignore
            ├── BitTorrent.gitignore
            ├── Blackbox.gitignore
            ├── Blender.gitignore
            ├── Bloop.gitignore
            ├── bluej.gitignore
            ├── Bookdown.gitignore
            ├── Bower.gitignore
            ├── BricxCC.gitignore
            ├── Buck.gitignore
            ├── Cake.gitignore
            ├── CakePHP2.gitignore
            ├── CakePHP3.gitignore
            ├── CakePHP.gitignore
            ├── Calabash.gitignore
            ├── Carthage.gitignore
            ├── certificates.gitignore
            ├── Ceylon.gitignore
            ├── CFWheels.gitignore
            ├── C++.gitignore
            ├── C.gitignore
            ├── ChefCookbook.gitignore
            ├── Chocolatey.gitignore
            ├── CircuitPython.gitignore
            ├── Clean.gitignore
            ├── CLion+all.gitignore -> JetBrains+all.gitignore
            ├── CLion+all.patch -> JetBrains+all.patch
            ├── CLion.gitignore -> JetBrains.gitignore
            ├── CLion+iml.gitignore -> JetBrains+iml.gitignore
            ├── CLion+iml.patch -> JetBrains+iml.patch
            ├── CLion.patch -> JetBrains.patch
            ├── Clojure.gitignore
            ├── Cloud9.gitignore
            ├── CMake.gitignore
            ├── CMake.patch
            ├── CocoaPods.gitignore
            ├── Cocos2dx.gitignore
            ├── CocosCreator.gitignore
            ├── CodeBlocks.gitignore
            ├── CodeComposerStudio.gitignore
            ├── CodeIgniter.gitignore
            ├── CodeIgniter.patch
            ├── Codeio.gitignore
            ├── CodeKit.gitignore
            ├── CodeKit.patch
            ├── CodeSniffer.gitignore
            ├── CoffeeScript.gitignore
            ├── CommonLisp.gitignore
            ├── Compodoc.gitignore
            ├── Composer.gitignore
            ├── CompressedArchive.gitignore
            ├── Compressed.gitignore
            ├── Compression.gitignore
            ├── Conan.gitignore
            ├── Concrete5.gitignore
            ├── Coq.gitignore
            ├── Cordova.gitignore
            ├── CraftCMS.gitignore
            ├── Crashlytics.gitignore
            ├── CRBasic.gitignore
            ├── Crossbar.gitignore
            ├── Crystal.gitignore
            ├── CS-Cart.gitignore
            ├── Csharp.gitignore -> VisualStudio.gitignore
            ├── CUDA.gitignore
            ├── CVS.gitignore
            ├── CypressIO.gitignore
            ├── DartEditor.gitignore
            ├── Dart.gitignore
            ├── Dart.patch
            ├── Database.gitignore
            ├── Data.gitignore
            ├── DataRecovery.gitignore
            ├── DBeaver.gitignore
            ├── dbt.gitignore
            ├── Defold.gitignore
            ├── Delphi.gitignore
            ├── Deno.gitignore
            ├── Dframe.gitignore
            ├── D.gitignore
            ├── Diff.gitignore
            ├── direnv.gitignore
            ├── DiskImage.gitignore
            ├── Django.gitignore
            ├── Django.Python.stack -> Python.gitignore
            ├── DM.gitignore
            ├── DocFx.gitignore
            ├── Docpress.gitignore
            ├── Docusaurus.gitignore
            ├── Docusaurus.Node.stack -> Node.gitignore
            ├── Docz.gitignore
            ├── dotenv.gitignore
            ├── DotfilesSh.gitignore
            ├── DotnetCore.gitignore
            ├── DotSettings.gitignore
            ├── Doxygen.gitignore
            ├── D.patch
            ├── Dreamweaver.gitignore
            ├── Dropbox.gitignore
            ├── Drupal7.gitignore
            ├── Drupal8.gitignore -> Drupal.gitignore
            ├── Drupal.gitignore
            ├── e2studio.gitignore
            ├── Eagle.gitignore
            ├── easybook.gitignore
            ├── Eclipse.gitignore
            ├── Eclipse.patch
            ├── EiffelStudio.gitignore
            ├── ElasticBeanstalk.gitignore
            ├── Elisp.gitignore
            ├── Elixir.gitignore
            ├── Elixir.patch
            ├── Elm.gitignore
            ├── Emacs.gitignore
            ├── Ember.gitignore
            ├── Ensime.gitignore
            ├── EPiServer.gitignore
            ├── Erlang.gitignore
            ├── Erlang.patch
            ├── Espresso.gitignore
            ├── Executable.gitignore
            ├── Exercism.gitignore
            ├── ExpressionEngine.gitignore
            ├── ExtJs.gitignore
            ├── Fancy.gitignore
            ├── fastlane.gitignore
            ├── Finale.gitignore
            ├── Firebase.gitignore
            ├── Firebase.patch
            ├── Fish.gitignore
            ├── FlashBuilder.gitignore
            ├── Flask.gitignore
            ├── Flask.Python.stack -> Python.gitignore
            ├── Flatpak.gitignore
            ├── FlexBuilder.gitignore
            ├── Flex.gitignore
            ├── floobits.gitignore
            ├── Flutter.gitignore
            ├── FontForge.gitignore
            ├── Font.gitignore
            ├── ForceDotCom.gitignore
            ├── ForgeGradle.gitignore
            ├── Fortran.gitignore
            ├── FreeCad.gitignore
            ├── FreePascal.gitignore
            ├── fsharp.gitignore
            ├── FuelPHP.gitignore
            ├── FuseTools.gitignore
            ├── Games.gitignore
            ├── Gatsby.gitignore
            ├── Gcov.gitignore
            ├── Genero4GL.gitignore
            ├── Geth.gitignore
            ├── GGTS.gitignore
            ├── GIS.gitignore
            ├── GitBook.gitignore
            ├── Git.gitignore
            ├── Godot.gitignore
            ├── Go.gitignore
            ├── GoLand+all.gitignore -> Intellij+all.gitignore
            ├── GoLand+all.patch -> Intellij+all.patch
            ├── GoLand.gitignore -> Intellij.gitignore
            ├── GoLand+iml.gitignore -> Intellij+iml.gitignore
            ├── GoLand+iml.patch -> Intellij+iml.patch
            ├── GoLand.patch -> Intellij.patch
            ├── GoodSync.gitignore
            ├── GPG.gitignore
            ├── Gradle.gitignore
            ├── Gradle.patch
            ├── Grails.gitignore
            ├── greenfoot.gitignore
            ├── Groovy.gitignore
            ├── grunt.gitignore
            ├── GWT.gitignore
            ├── Haskell.gitignore
            ├── Helm.gitignore
            ├── Hexo.gitignore
            ├── HOL.gitignore
            ├── HomeAssistant.gitignore
            ├── Homebrew.gitignore
            ├── HSP.gitignore
            ├── Hugo.gitignore
            ├── HyperledgerComposer.gitignore
            ├── IAREmbeddedWorkBench.gitignore
            ├── IAR_EWARM.gitignore
            ├── IAR.gitignore
            ├── IDAPro.gitignore
            ├── Idris.gitignore
            ├── IGORPro.gitignore
            ├── Images.gitignore
            ├── infer.gitignore
            ├── InforCMS.gitignore
            ├── InforCRM.gitignore
            ├── Intellij+all.gitignore -> JetBrains+all.gitignore
            ├── Intellij+all.patch -> JetBrains+all.patch
            ├── Intellij.gitignore -> JetBrains.gitignore
            ├── Intellij+iml.gitignore -> JetBrains+iml.gitignore
            ├── Intellij+iml.patch -> JetBrains+iml.patch
            ├── Intellij.patch -> JetBrains.patch
            ├── Ionic3.gitignore
            ├── JabRef.gitignore
            ├── Janet.gitignore
            ├── Java.gitignore
            ├── JBoss-4-2-3-GA.gitignore
            ├── JBoss4.gitignore
            ├── JBoss6.gitignore
            ├── JBoss-6-x.gitignore
            ├── JBoss.gitignore
            ├── JDeveloper.gitignore
            ├── Jekyll.gitignore
            ├── JEnv.gitignore
            ├── JetBrains+all.gitignore -> JetBrains.gitignore
            ├── JetBrains+all.patch
            ├── JetBrains.gitignore
            ├── JetBrains+iml.gitignore -> JetBrains.gitignore
            ├── JetBrains+iml.patch
            ├── JetBrains.patch
            ├── JGiven.gitignore
            ├── Jigsaw.gitignore
            ├── JMeter.gitignore
            ├── Joe.gitignore
            ├── Joomla.gitignore
            ├── Jsonnet.gitignore
            ├── jspm.gitignore
            ├── Julia.gitignore
            ├── JupyterNotebooks.gitignore
            ├── JustCode.gitignore
            ├── kaldi.gitignore
            ├── Kate.gitignore
            ├── KDevelop4.gitignore
            ├── KDiff3.gitignore
            ├── Keil.gitignore
            ├── Kentico.gitignore
            ├── KeystoneJS.gitignore
            ├── KiCad.gitignore
            ├── KiCad.patch
            ├── Kirby2.gitignore
            ├── Kirby3.gitignore
            ├── Kobalt.gitignore
            ├── Kohana.gitignore
            ├── KomodoEdit.gitignore
            ├── KonyVisualizer.gitignore
            ├── Kotlin.gitignore -> Java.gitignore
            ├── LabVIEW.gitignore
            ├── LabVIEWNXG.gitignore
            ├── LAMP.gitignore
            ├── LAMP.Linux.stack -> Linux.gitignore
            ├── LAMP.PHP.stack -> PhpStorm.gitignore
            ├── Laravel.gitignore
            ├── LaTeX.gitignore -> TeX.gitignore
            ├── LaTeX.patch -> TeX.patch
            ├── Lazarus.gitignore
            ├── Leiningen.gitignore
            ├── LemonStand.gitignore
            ├── Less.gitignore
            ├── LiberoSOC.gitignore
            ├── librarian-chef.gitignore
            ├── LibreOffice.gitignore
            ├── LighthouseCI.gitignore
            ├── Lilypond.gitignore
            ├── Linux.gitignore
            ├── Lithium.gitignore
            ├── LocalStack.gitignore
            ├── Logtalk.gitignore
            ├── LSspice.gitignore
            ├── LTspice.gitignore
            ├── Lua.gitignore
            ├── LyX.gitignore
            ├── macOS.gitignore
            ├── macOS.patch
            ├── Magento1.gitignore
            ├── Magento2.gitignore
            ├── Magento.gitignore
            ├── Magento.patch
            ├── Magic-xpa.gitignore
            ├── MATLAB.gitignore
            ├── Maven.gitignore
            ├── MavensMate.gitignore
            ├── MdBook.gitignore
            ├── MEAN.Anglar.stack -> Angular.gitignore
            ├── MEAN.gitignore
            ├── MEAN.Node.stack -> Node.gitignore
            ├── Mercurial.gitignore
            ├── Mercury.gitignore
            ├── Meson.gitignore
            ├── Metals.gitignore
            ├── Metalsmith.gitignore
            ├── MetaProgrammingSystem.gitignore
            ├── Meteor.gitignore
            ├── MeteorJS.gitignore
            ├── MicrosoftOffice.gitignore
            ├── MikroC.gitignore
            ├── Mill.gitignore
            ├── Moban.gitignore
            ├── ModelSim.gitignore
            ├── MODX.gitignore
            ├── Momentics.gitignore
            ├── MonoDevelop.gitignore
            ├── MPLabX.gitignore
            ├── mule.gitignore
            ├── Nanoc.gitignore
            ├── NativeScript.gitignore
            ├── NCrunch.gitignore
            ├── NesC.gitignore
            ├── NetBeans.gitignore
            ├── Nette.gitignore
            ├── NextJS.gitignore
            ├── Nikola.gitignore
            ├── Nim.gitignore
            ├── Ninja.gitignore
            ├── NodeChakraTimeTravelDebug.gitignore
            ├── Node.gitignore
            ├── Node.patch
            ├── Nohup.gitignore
            ├── NotepadPP.gitignore
            ├── nova.gitignore
            ├── now.gitignore
            ├── NuxtJS.gitignore
            ├── NWjs.gitignore
            ├── Objective-C.gitignore
            ├── Objective-C.patch
            ├── Obsidian.gitignore
            ├── OCaml.gitignore
            ├── Octave.gitignore -> MATLAB.gitignore
            ├── OctoberCms.gitignore
            ├── Opa.gitignore
            ├── OpenCart.gitignore
            ├── OpenCV.gitignore
            ├── OpenFOAM.gitignore
            ├── OpenFrameworks.gitignore
            ├── OpenFrameworks+VisualStudio.gitignore -> OpenFrameworks.gitignore
            ├── OpenFrameworks+VisualStudio.patch
            ├── OracleForms.gitignore
            ├── OrCAD.gitignore
            ├── order
            ├── OSX.gitignore -> macOS.gitignore
            ├── Otto.gitignore
            ├── OxidEshop.gitignore
            ├── oXygenXMLEditor.gitignore
            ├── Packer.gitignore
            ├── Packer.patch
            ├── Pants.gitignore
            ├── Particle.gitignore
            ├── Patch.gitignore
            ├── PAWN.gitignore
            ├── Perl6.gitignore
            ├── Perl.gitignore
            ├── pH7CMS.gitignore
            ├── Phalcon.gitignore
            ├── Phoenix.gitignore
            ├── PHPCodeSniffer.gitignore
            ├── PHP-CS-Fixer.gitignore
            ├── PhpStorm+all.gitignore -> JetBrains+all.gitignore
            ├── PhpStorm+all.patch -> JetBrains+all.patch
            ├── PhpStorm.gitignore -> JetBrains.gitignore
            ├── PhpStorm+iml.gitignore -> JetBrains+iml.gitignore
            ├── PhpStorm+iml.patch -> JetBrains+iml.patch
            ├── PhpStorm.patch -> JetBrains.patch
            ├── PHPUnit.gitignore
            ├── pico8.gitignore
            ├── Pimcore4.gitignore
            ├── Pimcore5.gitignore
            ├── Pimcore.gitignore
            ├── PineGrow.gitignore
            ├── PlatformIO.gitignore
            ├── PlayFramework.gitignore
            ├── Plone.gitignore
            ├── Polymer.gitignore
            ├── PowerShell.gitignore
            ├── premake-gmake.gitignore
            ├── Prepros.gitignore
            ├── Prestashop.gitignore
            ├── Processing.gitignore
            ├── ProgressABL.gitignore
            ├── PSoCCreator.gitignore
            ├── Pulumi.gitignore
            ├── Pulumi+stacks.gitignore -> Pulumi.gitignore
            ├── Pulumi+stacks.patch
            ├── Puppet.gitignore
            ├── puppet-librarian.gitignore
            ├── PureBasic.gitignore
            ├── PureScript.gitignore
            ├── PuTTY.gitignore
            ├── PVS.gitignore
            ├── PyCharm+all.gitignore -> JetBrains+all.gitignore
            ├── PyCharm+all.patch -> JetBrains+all.patch
            ├── PyCharm.gitignore -> JetBrains.gitignore
            ├── PyCharm+iml.gitignore -> JetBrains+iml.gitignore
            ├── PyCharm+iml.patch -> JetBrains+iml.patch
            ├── PyCharm.patch -> JetBrains.patch
            ├── pydev.gitignore
            ├── Python.gitignore
            ├── Python.patch
            ├── PythonVanilla.gitignore
            ├── QML.gitignore
            ├── Qooxdoo.gitignore
            ├── QtCreator.gitignore
            ├── Qt.gitignore
            ├── Racket.gitignore
            ├── Rails.gitignore
            ├── R.Bookdown.stack -> Bookdown.gitignore
            ├── react.gitignore
            ├── ReactNative.Android.stack -> Android.gitignore
            ├── ReactNative.Buck.stack -> Buck.gitignore
            ├── ReactNative.gitignore
            ├── ReactNative.Gradle.stack -> Gradle.gitignore
            ├── ReactNative.Linux.stack -> Linux.gitignore
            ├── ReactNative.macOS.stack -> macOS.gitignore
            ├── ReactNative.Node.stack -> Node.gitignore
            ├── ReactNative.Xcode.stack -> Xcode.gitignore
            ├── Reasonml.gitignore
            ├── Redcar.gitignore
            ├── Red.gitignore
            ├── Redis.gitignore
            ├── Remix+Arc.gitignore
            ├── Remix+CloudflarePages.gitignore
            ├── Remix+CloudflareWorkers.gitignore
            ├── Remix.gitignore
            ├── Remix+Netlify.gitignore
            ├── Remix+Vercel.gitignore
            ├── Renpy.gitignore
            ├── replit.gitignore
            ├── retool.gitignore
            ├── R.gitignore
            ├── RhodesRhomobile.gitignore
            ├── Rider+all.patch
            ├── Rider.gitignore -> JetBrains.gitignore
            ├── Rider+iml.patch -> JetBrains+iml.patch
            ├── robotframework.gitignore
            ├── ROOT.gitignore
            ├── ROS2.gitignore
            ├── ROS.gitignore
            ├── Ruby.gitignore
            ├── RubyMine+all.gitignore -> JetBrains+all.gitignore
            ├── RubyMine+all.patch -> JetBrains+all.patch
            ├── RubyMine.gitignore -> JetBrains.gitignore
            ├── RubyMine+iml.gitignore -> JetBrains+iml.gitignore
            ├── RubyMine+iml.patch -> JetBrains+iml.patch
            ├── RubyMine.patch -> JetBrains.patch
            ├── rust-analyzer.gitignore
            ├── Rust.gitignore
            ├── SalesforceDX.gitignore -> Salesforce.gitignore
            ├── SalesforceDX.patch
            ├── Salesforce.gitignore
            ├── SAM+config.gitignore -> SAM.gitignore
            ├── SAM+config.patch
            ├── SAM.gitignore
            ├── SAS.gitignore
            ├── Sass.gitignore
            ├── SBT.gitignore
            ├── SBT.patch
            ├── Scala.gitignore
            ├── Scheme.gitignore
            ├── SCons.gitignore
            ├── Scrivener.gitignore
            ├── Sdcc.gitignore
            ├── SeamGen.gitignore
            ├── SenchaTouch.gitignore
            ├── Serverless.gitignore
            ├── Shopware.gitignore
            ├── Silverstripe.gitignore
            ├── SketchUp.gitignore
            ├── SlickEdit.gitignore
            ├── Smalltalk.gitignore
            ├── Snapcraft.gitignore
            ├── Snap.gitignore
            ├── Snyk.gitignore
            ├── Solidity.gitignore -> Node.gitignore
            ├── SolidityTruffle.gitignore
            ├── Sonar.gitignore
            ├── SonarQube.gitignore
            ├── SourcePawn.gitignore
            ├── Spark.gitignore
            ├── SpecFlow.gitignore
            ├── Splunk.gitignore
            ├── Spreadsheet.gitignore
            ├── SSH.gitignore
            ├── StandardML.gitignore
            ├── Stata.gitignore
            ├── StdLib.gitignore
            ├── Stella.gitignore
            ├── Stellar.gitignore
            ├── StorybookJs.gitignore
            ├── Strapi.gitignore
            ├── Stylus.gitignore
            ├── SublimeText.gitignore
            ├── SugarCRM.gitignore
            ├── Svelte.gitignore
            ├── SVN.gitignore
            ├── Swift.gitignore
            ├── SwiftPackageManager.gitignore
            ├── SwiftPM.gitignore -> SwiftPackageManager.gitignore
            ├── Symfony.gitignore
            ├── Symfony.patch
            ├── SymphonyCMS.gitignore
            ├── Synology.gitignore
            ├── SynopsysVCS.gitignore
            ├── Tags.gitignore
            ├── TarmaInstallMate.gitignore
            ├── Terraform.gitignore
            ├── Terragrunt.gitignore
            ├── TestComplete.gitignore
            ├── Test.gitignore
            ├── Testinfra.gitignore
            ├── TeX.gitignore
            ├── TeX.patch
            ├── Text.gitignore
            ├── TextMate.gitignore
            ├── Textpattern.gitignore
            ├── THEOS-Tweak.gitignore
            ├── ThinkPHP.gitignore
            ├── TLA+.gitignore
            ├── Toit.gitignore
            ├── TortoiseGit.gitignore
            ├── Tower.gitignore
            ├── TurboGears2.gitignore
            ├── Turbo.gitignore
            ├── TwinCAT3.gitignore
            ├── TwinCAT3.OpenFrameworks.stack
            ├── TwinCAT3.VisualStudio.stack
            ├── Tye.gitignore
            ├── Typings.gitignore
            ├── TYPO3-composer.gitignore
            ├── Typo3.gitignore
            ├── Umbraco.gitignore
            ├── Unity.gitignore
            ├── UnrealEngine.gitignore
            ├── UnrealEngine.patch
            ├── Vaadin.gitignore
            ├── Vagrant.gitignore
            ├── Vagrant.patch
            ├── Valgrind.gitignore
            ├── Vapor.gitignore
            ├── Vapor.patch -> SwiftPackageManager.gitignore
            ├── vcpkg.gitignore
            ├── venv.gitignore -> VirtualEnv.gitignore
            ├── Vercel.gitignore
            ├── Vertx.gitignore
            ├── Video.gitignore
            ├── Vim.gitignore
            ├── VirtualEnv.gitignore
            ├── Virtuoso.gitignore
            ├── VisualBasic.gitignore
            ├── VisualStudioCode.gitignore
            ├── VisualStudioCode.patch
            ├── VisualStudio.gitignore
            ├── VisualStudio.patch
            ├── Vivado.gitignore
            ├── VLab.gitignore
            ├── vRealizeOrchestrator.gitignore
            ├── vs.gitignore
            ├── Vue.gitignore
            ├── Vuejs.gitignore
            ├── VVVV.gitignore
            ├── Waf.gitignore
            ├── Wakanda.gitignore
            ├── Web.gitignore
            ├── WebMethods.gitignore
            ├── WebStorm+all.gitignore -> JetBrains+all.gitignore
            ├── WebStorm+all.patch -> JetBrains+all.patch
            ├── WebStorm.gitignore -> JetBrains.gitignore
            ├── WebStorm+iml.gitignore -> JetBrains+iml.gitignore
            ├── WebStorm+iml.patch -> JetBrains+iml.patch
            ├── WebStorm.patch -> JetBrains.patch
            ├── WerckerCLI.gitignore
            ├── Windows.gitignore
            ├── Wintersmith.gitignore
            ├── WordPress.gitignore
            ├── Wyam.gitignore
            ├── XamarinStudio.gitignore
            ├── Xcode.gitignore
            ├── XcodeInjection.gitignore
            ├── Xcode.patch
            ├── Xilinx.gitignore
            ├── XilinxISE.gitignore
            ├── XilinxVivado.gitignore
            ├── Xill.gitignore
            ├── xmake.gitignore
            ├── Xojo.gitignore
            ├── XText.gitignore
            ├── Y86.gitignore
            ├── yalc.gitignore
            ├── yarn.gitignore
            ├── Yeoman.gitignore
            ├── Yii2.gitignore
            ├── Yii.gitignore
            ├── ZendFramework.gitignore
            ├── Zephir.gitignore
            ├── zig.gitignore
            ├── Zsh.gitignore
            └── ZukenCR8000.gitignore
```

## To generate a tree view

***On Linux: Use the tree command**

```bash
tree
```

To display only the directories and not their contents using the tree command, you can use the `-d` flag. This flag tells tree to list directories only.

Here's the command:

```bash
tree -d
```

If you want to limit the depth of the directory tree, you can use the `-L` flag followed by the desired depth level. For example, to display directories up to a depth of 2:

```bash
tree -d -L 2
```

## OR use the VS Code Extenstion

### [file-tree-generator](https://marketplace.visualstudio.com/items?itemName=Shinotatwu-DS.file-tree-generator)
