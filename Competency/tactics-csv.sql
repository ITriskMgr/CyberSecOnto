CREATE TABLE tactics_csv (
TacticID VARCHAR(20) NULL,
TacticName VARCHAR(100) NULL,
description TEXT NULL,
url TEXT NULL,
created VARCHAR(20) NULL,
lastmodified VARCHAR(20) NULL
);
INSERT INTO tactics_csv (TacticID,TacticName,description,url,created,lastmodified) VALUES 
( 'TA0009','Collection','The adversary is trying to gather data of interest to their goal.

Collection consists of techniques adversaries may use to gather information and the sources information is collected from that are relevant to following through on the adversary''s objectives. Frequently, the next goal after collecting data is to steal (exfiltrate) the data. Common target sources include various drive types, browsers, audio, video, and email. Common collection methods include capturing screenshots and keyboard input.','https://attack.mitre.org/tactics/TA0009','17 October 2018','19 July 2019' ),
( 'TA0011','Command and Control','The adversary is trying to communicate with compromised systems to control them.

Command and Control consists of techniques that adversaries may use to communicate with systems under their control within a victim network. Adversaries commonly attempt to mimic normal, expected traffic to avoid detection. There are many ways an adversary can establish command and control with various levels of stealth depending on the victim’s network structure and defenses.','https://attack.mitre.org/tactics/TA0011','17 October 2018','19 July 2019' ),
( 'TA0006','Credential Access','The adversary is trying to steal account names and passwords.

Credential Access consists of techniques for stealing credentials like account names and passwords. Techniques used to get credentials include keylogging or credential dumping. Using legitimate credentials can give adversaries access to systems, make them harder to detect, and provide the opportunity to create more accounts to help achieve their goals.','https://attack.mitre.org/tactics/TA0006','17 October 2018','19 July 2019' ),
( 'TA0005','Defense Evasion','The adversary is trying to avoid being detected.

Defense Evasion consists of techniques that adversaries use to avoid detection throughout their compromise. Techniques used for defense evasion include uninstalling/disabling security software or obfuscating/encrypting data and scripts. Adversaries also leverage and abuse trusted processes to hide and masquerade their malware. Other tactics’ techniques are cross-listed here when those techniques include the added benefit of subverting defenses.','https://attack.mitre.org/tactics/TA0005','17 October 2018','19 July 2019' ),
( 'TA0007','Discovery','The adversary is trying to figure out your environment.

Discovery consists of techniques an adversary may use to gain knowledge about the system and internal network. These techniques help adversaries observe the environment and orient themselves before deciding how to act. They also allow adversaries to explore what they can control and what’s around their entry point in order to discover how it could benefit their current objective. Native operating system tools are often used toward this post-compromise information-gathering objective.','https://attack.mitre.org/tactics/TA0007','17 October 2018','19 July 2019' ),
( 'TA0002','Execution','The adversary is trying to run malicious code.

Execution consists of techniques that result in adversary-controlled code running on a local or remote system. Techniques that run malicious code are often paired with techniques from all other tactics to achieve broader goals, like exploring a network or stealing data. For example, an adversary might use a remote access tool to run a PowerShell script that does Remote System Discovery.','https://attack.mitre.org/tactics/TA0002','17 October 2018','19 July 2019' ),
( 'TA0010','Exfiltration','The adversary is trying to steal data.

Exfiltration consists of techniques that adversaries may use to steal data from your network. Once they’ve collected data, adversaries often package it to avoid detection while removing it. This can include compression and encryption. Techniques for getting data out of a target network typically include transferring it over their command and control channel or an alternate channel and may also include putting size limits on the transmission.','https://attack.mitre.org/tactics/TA0010','17 October 2018','19 July 2019' ),
( 'TA0040','Impact','The adversary is trying to manipulate, interrupt, or destroy your systems and data.
 
Impact consists of techniques that adversaries use to disrupt availability or compromise integrity by manipulating business and operational processes. Techniques used for impact can include destroying or tampering with data. In some cases, business processes can look fine, but may have been altered to benefit the adversaries’ goals. These techniques might be used by adversaries to follow through on their end goal or to provide cover for a confidentiality breach.','https://attack.mitre.org/tactics/TA0040','14 March 2019','25 July 2019' ),
( 'TA0001','Initial Access','The adversary is trying to get into your network.

Initial Access consists of techniques that use various entry vectors to gain their initial foothold within a network. Techniques used to gain a foothold include targeted spearphishing and exploiting weaknesses on public-facing web servers. Footholds gained through initial access may allow for continued access, like valid accounts and use of external remote services, or may be limited-use due to changing passwords.','https://attack.mitre.org/tactics/TA0001','17 October 2018','19 July 2019' ),
( 'TA0008','Lateral Movement','The adversary is trying to move through your environment.

Lateral Movement consists of techniques that adversaries use to enter and control remote systems on a network. Following through on their primary objective often requires exploring the network to find their target and subsequently gaining access to it. Reaching their objective often involves pivoting through multiple systems and accounts to gain. Adversaries might install their own remote access tools to accomplish Lateral Movement or use legitimate credentials with native network and operating system tools, which may be stealthier.','https://attack.mitre.org/tactics/TA0008','17 October 2018','19 July 2019' ),
( 'TA0003','Persistence','The adversary is trying to maintain their foothold.

Persistence consists of techniques that adversaries use to keep access to systems across restarts, changed credentials, and other interruptions that could cut off their access. Techniques used for persistence include any access, action, or configuration changes that let them maintain their foothold on systems, such as replacing or hijacking legitimate code or adding startup code.','https://attack.mitre.org/tactics/TA0003','17 October 2018','19 July 2019' ),
( 'TA0004','Privilege Escalation','The adversary is trying to gain higher-level permissions.

Privilege Escalation consists of techniques that adversaries use to gain higher-level permissions on a system or network. Adversaries can often enter and explore a network with unprivileged access but require elevated permissions to follow through on their objectives. Common approaches are to take advantage of system weaknesses, misconfigurations, and vulnerabilities. Examples of elevated access include: 

* SYSTEM/root level
* local administrator
* user account with admin-like access 
* user accounts with access to specific system or perform specific function

These techniques often overlap with Persistence techniques, as OS features that let an adversary persist can execute in an elevated context.','https://attack.mitre.org/tactics/TA0004','17 October 2018','06 January 2021' ),
( 'TA0043','Reconnaissance','The adversary is trying to gather information they can use to plan future operations.

Reconnaissance consists of techniques that involve adversaries actively or passively gathering information that can be used to support targeting. Such information may include details of the victim organization, infrastructure, or staff/personnel. This information can be leveraged by the adversary to aid in other phases of the adversary lifecycle, such as using gathered information to plan and execute Initial Access, to scope and prioritize post-compromise objectives, or to drive and lead further Reconnaissance efforts.','https://attack.mitre.org/tactics/TA0043','02 October 2020','18 October 2020' ),
( 'TA0042','Resource Development','The adversary is trying to establish resources they can use to support operations.

Resource Development consists of techniques that involve adversaries creating, purchasing, or compromising/stealing resources that can be used to support targeting. Such resources include infrastructure, accounts, or capabilities. These resources can be leveraged by the adversary to aid in other phases of the adversary lifecycle, such as using purchased domains to support Command and Control, email accounts for phishing as a part of Initial Access, or stealing code signing certificates to help with Defense Evasion.','https://attack.mitre.org/tactics/TA0042','30 September 2020','30 September 2020' )