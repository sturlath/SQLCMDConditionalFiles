/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/**************************************************************************************************/
/* Nothing I try here works... every print statement is added to the publishing script generated! */
/*                                                                                                */
/**************************************************************************************************/

/*************************************************************************************************/
/* START ATTEMPT 1 (doesn´t work)                                                                */
/*************************************************************************************************/
IF'($(Customer)' <> 'customer1')
SET NOEXEC ON
Print 'This print statement should not be in the publishing script if Customer variable is not customer1'
:r ..\SQLCMDCONDITIONALFILES\Customer1Stuff\Customer1.sql
SET NOEXEC OFF

IF('$(Customer)' <> 'customer2')
SET NOEXEC ON
Print 'This print statement should not be in the publishing script if Customer variable is not customer2'
:r ..\SQLCMDCONDITIONALFILES\Customer2Stuff\Customer2.sql
SET NOEXEC OFF

IF('$(Customer)' <> 'customer3')
SET NOEXEC ON
Print 'This print statement should not be in the publishing script if Customer variable is not customer3'
:r ..\SQLCMDCONDITIONALFILES\Customer3Stuff\Customer3.sql
SET NOEXEC OFF
/******************************************************************************************************/
/* END ATTEMPT 1                                                                                      */
/******************************************************************************************************/

/*************************************************************************************************/
/* START ATTEMPT 2 [removed the ' around the $(Customer) variable](doesn´t work)                 */
/*************************************************************************************************/
--IF($(Customer) <> 'customer1')
--SET NOEXEC ON
--Print 'This print statement should not be in the publishing script if Customer variable is not customer1'
--:r ..\SQLCMDCONDITIONALFILES\Customer1Stuff\Customer1.sql
--SET NOEXEC OFF

--IF($(Customer) <> 'customer2')
--SET NOEXEC ON
--Print 'This print statement should not be in the publishing script if Customer variable is not customer2'
--:r ..\SQLCMDCONDITIONALFILES\Customer2Stuff\Customer2.sql
--SET NOEXEC OFF

--IF($(Customer) <> 'customer3')
--SET NOEXEC ON
--Print 'This print statement should not be in the publishing script if Customer variable is not customer3'
--:r ..\SQLCMDCONDITIONALFILES\Customer3Stuff\Customer3.sql
--SET NOEXEC OFF
/******************************************************************************************************/
/* END ATTEMPT 2                                                                                      */
/******************************************************************************************************/

/*************************************************************************************************/
/* START ATTEMPT 3 [just added begin/end](doesn´t work)                                          */
/*************************************************************************************************/
--IF('$(Customer)' <> 'customer1')
--BEGIN
--SET NOEXEC ON
--Print 'This print statement should not be in the publishing script if Customer variable is not customer1'
--:r ..\SQLCMDCONDITIONALFILES\Customer1Stuff\Customer1.sql
--SET NOEXEC OFF
--END

--IF('$(Customer)' <> 'customer2')
--BEGIN
--SET NOEXEC ON
--Print 'This print statement should not be in the publishing script if Customer variable is not customer2'
--:r ..\SQLCMDCONDITIONALFILES\Customer2Stuff\Customer2.sql
--SET NOEXEC OFF
--END

--IF('$(Customer)' <> 'customer3')
--BEGIN
--SET NOEXEC ON
--Print 'This print statement should not be in the publishing script if Customer variable is not customer3'
--:r ..\SQLCMDCONDITIONALFILES\Customer3Stuff\Customer3.sql
--SET NOEXEC OFF
--END
/******************************************************************************************************/
/* END ATTEMPT 2                                                                                      */
/******************************************************************************************************/

/******************************************************************************************************/
/* START ATTEMPT 4 [just for completeness sake to show that ordinary if does not work](doesn´t work)  */
/******************************************************************************************************/
--IF('$(Customer)' = 'customer1')
--BEGIN
--Print 'This print statement should not be in the publishing script if Customer variable is not customer1'
--:r ..\SQLCMDCONDITIONALFILES\Customer1Stuff\Customer1.sql
--END

--IF('$(Customer)' = 'customer2')
--BEGIN
--Print 'This print statement should not be in the publishing script if Customer variable is not customer2'
--:r ..\SQLCMDCONDITIONALFILES\Customer2Stuff\Customer2.sql
--END

--IF('$(Customer)' = 'customer3')
--BEGIN
--Print 'This print statement should not be in the publishing script if Customer variable is not customer3'
--:r ..\SQLCMDCONDITIONALFILES\Customer3Stuff\Customer3.sql
--END
/******************************************************************************************************/
/* END ATTEMPT 3                                                                                      */
/******************************************************************************************************/


-- and then just something else everybody should have...
:r ..\SQLCMDCONDITIONALFILES\CommonStuff\Common.sql