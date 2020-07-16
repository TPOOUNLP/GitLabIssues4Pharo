world menu
menuCommandOn: aBuilder
<worldMenu>

(aBuilder item: #WidgetGitlabIssues4Pharo)
	order: 1.0;
	label: 'GitlabIssues4Pharo';
	parent: #Tools;
	icon: (self iconNamed: #gitlab);
	help: 'Gitlab Issues integrated on Pharo';
	keyText: 'o, f';
	action: [ WidgetGitlabIssues4Pharo new openWithSpec ]