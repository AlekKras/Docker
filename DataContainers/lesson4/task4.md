#Export and Import Containers

If we want to move the Data Container to another machine then we can export it to a .tar file

<code>docker export dataContainer > dataContainer.tar </code>

The command below will import the Data Container back into Docker:

<code>docker import dataContainer.tar</code>

