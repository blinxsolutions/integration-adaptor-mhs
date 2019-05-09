import unittest

import adaptor.outgoing.interchange_adaptor as adaptor


class TestInterchangeAdaptor(unittest.TestCase):

    def test_generate_recipient_from(self):
        """
        Test the generation of a recipient cypher from the nhais cypher
        """
        with self.subTest("When the nhais cypher is 3 characters"):
            recipient_cypher = adaptor.generate_recipient_from('XX1')

            self.assertEqual(recipient_cypher, "XX11")

        with self.subTest("When the nhais cypher is 2 characters"):
            recipient_cypher = adaptor.generate_recipient_from('XX')

            self.assertEqual(recipient_cypher, "XX01")
