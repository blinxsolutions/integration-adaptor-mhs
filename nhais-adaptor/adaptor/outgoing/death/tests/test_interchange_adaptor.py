import unittest

import adaptor.outgoing.death.tests.fixtures as fixtures
from testfixtures import compare
import adaptor.outgoing.interchange_adaptor as adaptor


class TestInterchangeAdaptor(unittest.TestCase):
    """
    Test the conversation of fhir to an edifact interchange for a death registration
    """

    def test_create_interchange(self):
        """
        Test the function to create an edifact interchange
        """
        with self.subTest("When the operation is for a Death Registration"):
            expected_edifact_interchange = ("UNB+UNOA:2+TES5+XX11+190423:0900+000001++FHSREG'"
                                            "UNH+000001+FHSREG:0:1:FH:FHS001'"
                                            "BGM+++507'"
                                            "NAD+FHS+XX1:954'"
                                            "DTM+137:201904230900:203'"
                                            "RFF+950:G5'"
                                            "S01+1'"
                                            "RFF+TN:17'"
                                            "NAD+GP+4826940,281:900'"
                                            "GIS+1:ZZZ'"
                                            "DTM+961:20190420:102'"
                                            "S02+2'"
                                            "PNA+PAT+NHSNO22222:OPI'"
                                            "UNT+13+000001'"
                                            "UNZ+1+000001'")

            op_def = fixtures.create_operation_definition_for_death_registration()

            (sender, recipient, interchange_seq_no, interchange) = adaptor.create_interchange(fhir_operation=op_def)

            compare(interchange, expected_edifact_interchange)
