Need h2 database with preloaded data in openshift? Here is an example.

During container image build, all the scripts under init-scripts directory will be concatenated and written in one sql file.

After successful deployment, database will be initialized and concatenated sql file will be executed.



CREDITS : 

https://github.com/oscarfonts/docker-h2 -- good base for a start! 